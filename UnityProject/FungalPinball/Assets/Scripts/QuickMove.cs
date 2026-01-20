using UnityEngine;

public class QuickMove : MonoBehaviour
{
    [SerializeField]
    private float speed = 2.0f;
    private GameObject curObject;
    private Quaternion ogState;
    private Rigidbody rb;

    void Awake()
    {
        curObject = this.gameObject;
        // ogState = new Quaternion(
        //     curObject.transform.rotation.x,
        //     curObject.transform.rotation.y,
        //     curObject.transform.rotation.y,
        //     curObject.transform.rotation.w
        //     );
        rb = curObject.GetComponent<Rigidbody>();
        ogState = rb.rotation;
    }

    // Update is called once per frame
    public void RotateTo(Transform target)
    {
        var step = speed * Time.deltaTime;
        Debug.Log("rotatingTo");
        // curObject.transform.rotation = Quaternion.RotateTowards(transform.rotation, target.rotation, step);
        // curObject.transform.rotation = Quaternion.Slerp(transform.rotation, target.rotation, step);
        // curObject.transform.rotation = target.rotation;
        rb.MoveRotation(target.rotation);
    }

    public void ReturnToOriginal()
    {
        if (ogState != rb.rotation)
        {
            var step = speed * Time.deltaTime;
            Debug.Log("rotatingBack");
            Debug.Log(rb.rotation);
            Debug.Log(ogState);
            // curObject.transform.rotation = Quaternion.Slerp(transform.rotation, ogState.rotation, step);
            // curObject.transform.rotation = ogState.rotation;
            rb.MoveRotation(ogState);
        }

    }
    public void ReturnToZero()
    {
        var step = speed * Time.deltaTime;
        Debug.Log("rotatingBack");
        Quaternion zeroQuat = new Quaternion (0, 0, 0, 1);
        // curObject.transform.rotation = Quaternion.Slerp(transform.rotation, zeroQuat, step);
        // curObject.transform.rotation = zeroQuat;
        rb.MoveRotation(zeroQuat);
    }

    public void SetOriginalPosition(Transform newOGState)
    {
        ogState = new Quaternion(
            newOGState.rotation.x,
            newOGState.rotation.y,
            newOGState.rotation.y,
            newOGState.rotation.w
            );
        // ogState = new Quaternion(
        //     newOGState.x,
        //     newOGState.y,
        //     newOGState.y,
        //     newOGState.w
        //     );
    }
}
