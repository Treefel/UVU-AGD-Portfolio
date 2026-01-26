using System;
using UnityEngine;

public class CollideAddForce : MonoBehaviour
{
    [SerializeField]
    private float forceValue;

    void OnCollisionEnter(Collision collision)
    {
        Vector3 colPoint = collision.GetContact(0).point;
        Rigidbody rb = collision.rigidbody;
        
        // use this for adding z calculations
        // Vector3 target = new Vector3(
        //     rb.position.x - colPoint.x,
        //     rb.position.y - colPoint.y,
        //     rb.position.z - colPoint.z
        // );

        Vector3 target = new Vector3(
            rb.position.x - colPoint.x,
            rb.position.y - colPoint.y,
            rb.position.z
        );
        Vector3 dir = GetDirection(target);


        Vector3 forceVector = dir * forceValue;
        rb.AddForceAtPosition(forceVector, colPoint, ForceMode.Impulse);

    }

    private Vector3 GetDirection(Vector3 target)
    {
        float signX = target.x * Math.Sign(target.x);
        float signY = target.y * Math.Sign(target.y);
        float total = signX + signY;
        
        // add * -1 for z if you want it to calculate.
        Vector3 dir = new Vector3(
            target.x / total,
            target.y / total,
            target.z
        );
        return dir;
    }

    public void UpdateForce(FloatData data)
    {
        forceValue = data.Value;
    }
    public void UpdateForce(float data)
    {
        forceValue = data;
    }

    public void MultiplyForce(FloatData data)
    {
        forceValue *= data.Value;
    }
    public void AddingForce(FloatData data)
    {
        forceValue += data.Value;
    }
}
