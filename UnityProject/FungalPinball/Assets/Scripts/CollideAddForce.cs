using System;
using UnityEngine;

public class CollideAddForce : MonoBehaviour
{
    public float forceValue;
    void OnCollisionEnter(Collision collision)
    {
        Vector3 colPoint = collision.GetContact(0).point;
        Rigidbody rb = collision.rigidbody;

        Vector3 target = new Vector3(
            colPoint.x + rb.position.x,
            colPoint.y + rb.position.y.
            colPoint.z + rb.position.z
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
        Vector3 dir = new Vector3(
            target.x / total,
            target.y / total,
            target.z * -1
        );
        Debug.Log(dir);
        return dir;
    }
}
