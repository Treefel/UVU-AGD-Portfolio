using UnityEngine;

public class PlayerTankController : MonoBehaviour
{
    public float rotationSpeed = 5.0f; // Set planet rotation speed
    private Rigidbody rb;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void FixedUpdate()
    {
        float turnHorizontal = Input.GetAxis("Horizontal") * rotationSpeed * Time.fixedDeltaTime * -1;
        Quaternion turnRotation =  Quaternion.Euler(0f, turnHorizontal, 0f);
        rb.MoveRotation(rb.rotation * turnRotation);
    }
}
