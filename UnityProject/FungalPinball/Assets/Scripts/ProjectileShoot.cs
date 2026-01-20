using System;
using UnityEngine;
public class ProjectileShoot : MonoBehaviour
{
    [SerializeField]
    private LineRenderer LineRenderer;

    [Header("Display Controls")]
    [SerializeField]
    [Range(10, 100)]
    private int LinePoints = 25;

    [SerializeField]
    [Range(0.01f, .25f)]
    private float TimeBetweenPoints = 0.1f;

    [SerializeField]
    private Vector3Data mouseCursor;

    private Rigidbody rb;

    private Vector3 target;
    private Vector3 dir;
    public float forceValue = 120f;
    private GameObject curObject;
    private bool prepFire;
    private bool fired;
    // private Vector3 mousePos;


    void Awake()
    {
        curObject = this.gameObject;
        rb = curObject.GetComponent<Rigidbody>();
        // mousePos = mouseCursor.value;
    }

    void Update()
    {
        //  if (Input.GetButton("Fire1"))
        // {
        //     prepFire = true;
        //     trackMouse();
        // }
        // if (Input.GetButtonUp("Fire1"))
        // {
        //     GetDirection();
        //     addProjForce();
        // }
    }

    public void addProjForce()
    {
        if (!fired)
        {
            fired = true;
            Debug.Log("they shot him");
            rb.linearVelocity = Vector3.zero;
            rb.AddForce(dir * forceValue, ForceMode.Impulse);
            Debug.Log("target:" + target);
        }
    }

    public void trackMouse()
    {
        target = new Vector3(
            mouseCursor.value.x - curObject.transform.position.x,
            mouseCursor.value.y - curObject.transform.position.y,
            mouseCursor.value.z - curObject.transform.position.z
        );
        
        GetDirection();
        DrawProjection();
    }

    private void GetDirection()
    {
        float signX = target.x * Math.Sign(target.x);
        float signY = target.y * Math.Sign(target.y);
        float total = signX + signY;
        dir = new Vector3(
            target.x / total,
            target.y / total,
            0
        );
        Debug.Log(dir);
    }

    private void DrawProjection()
    {      
        LineRenderer.enabled = true;
        LineRenderer.positionCount = Mathf.CeilToInt(LinePoints / TimeBetweenPoints) + 1;
        Vector3 startPosition = curObject.transform.position;
        Vector3 curPosition = startPosition;
        Vector3 startVelocity = dir * forceValue / rb.mass;
        Vector3 velocity = startVelocity;        

        int i = 0;
        LineRenderer.SetPosition(i, startPosition);
        for (float time = 0; time < LinePoints; time += TimeBetweenPoints)
        {
            i++;
            velocity += Physics.gravity * time;
            Vector3 point = startPosition + time * velocity;
            point = curPosition + velocity * time;            
            curPosition = point;
            LineRenderer.SetPosition(i, point);
        }
    }
}
