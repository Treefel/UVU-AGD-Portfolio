using System;
using UnityEngine;

public class PointTowards : MonoBehaviour
{
    [SerializeField]
    private Vector3Data mouseCursor;
    private GameObject curObject;
    private bool active;

    [SerializeField]
    private float[] dirConstraint = new float[4] {-1f,1f,-1f,1f};

    private Vector3 target;
    private Vector3 dir;

    void Awake()
    {
        curObject = this.gameObject;
    }

    void Update()
    {  
        if (active)
            trackMouse();
    }

    public void setActive(bool newActive)
    {
        active = newActive;
    }

    public void setDirConstraint(float[] newCon)
    {
        dirConstraint = newCon;
    }

    private void trackMouse()
    {
        target = new Vector3(
            mouseCursor.value.x - curObject.transform.position.x,
            mouseCursor.value.y - curObject.transform.position.y,
            mouseCursor.value.z - curObject.transform.position.z
        );
        
        GetDirection();
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

        lookingAt(dir);
    }

    public void lookingAt(Vector3 newDir)
    {
        transform.rotation = Quaternion.LookRotation(newDir,Vector3.up);
    }
}
