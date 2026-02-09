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
    private float TimeBetweenPoints = 0.01f;

    [SerializeField]
    private Vector3Data mouseCursor;

    // first two values are x constraints, second 2 values are y constraint
    [SerializeField]
    private float[] dirConstraint = new float[4] {-1f,1f,-1f,1f};

    private Rigidbody rb;
    public float gravity = -9.81f;

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

    void FixedUpdate()
    {
        // Debug.Log("rigidbody:" + rb.linearVelocity);
        // Debug.Log("calcForce:" + (dir * forceValue));
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

    public void setDirConstraint(float[] newCon)
    {
        dirConstraint = newCon;
    }

    public void addProjForce()
    {
        if (!fired)
        {
            trackMouse();
            Debug.Log("direction:" + dir);
            Debug.Log("force:" + forceValue);
            Debug.Log("addedForce:" + dir * forceValue);
            fired = true;
            rb.linearVelocity = Vector3.zero;
            rb.AddRelativeForce(dir * forceValue, ForceMode.Impulse);
            // Physics.gravity = new Vector3(0f, -9.81f, 0);
            // rb.linearVelocity = dir * forceValue;
            
            LineRenderer.enabled = false;
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
        if (dir.x <= dirConstraint[0]) dir.x = dirConstraint[0];
        if (dir.x >= dirConstraint[1]) dir.x = dirConstraint[1];
        if (dir.y <= dirConstraint[2]) dir.y = dirConstraint[2];
        if (dir.y >= dirConstraint[3]) dir.y = dirConstraint[3];
        // float rad = (MathF.Atan2(target.y, target.x) + 450f) % 360f;
        // float degree = rad * 180f / MathF.PI;
        // Debug.Log(degree);



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
            // velocity += Physics.gravity * time;
            // Vector3 point = startPosition + time * velocity;
            // point = curPosition + velocity * time;
            
            // float t = i * time;

            Vector3 point = new Vector3(
                startPosition.x + startVelocity.x * time,
                startPosition.y + (startVelocity.y * time) + (0.5f * Physics.gravity.y * time * time),
                startPosition.z
            );
            //     curPosition + startVelocity * time;
            // point.y = curPosition.y + (startVelocity.y * time) + (0.5f * Physics.gravity.y * time * time);

            curPosition = point;
            LineRenderer.SetPosition(i, point);

            // i++;

            // velocity += Physics.gravity * time;
            // Vector3 point = curPosition + time * velocity;
            
            // curPosition = point;
            // LineRenderer.SetPosition(i, point);
        }
    }
}
