using UnityEngine;

public class PlanetController : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        PlayerController playerController = other.GetComponent<PlayerController>();
        if (playerController != null)
        {
            if (playerController.currentPlanet == transform) return;
            playerController.currentPlanet = transform;
            playerController.EnterNewGravityField();
        }
    }


    // public float rotationSpeed = 5.0f; // Set planet rotation speed
    // private Rigidbody rb;
    // private float turnAmount = 0f;
    // Quaternion turnRotation;
    // public Transform target;
    // Vector3 relativePos;

    // private void Start()
    // {
    //     relativePos = target.position - transform.position;
    //     rb = GetComponent<Rigidbody>();
    //     turnRotation.SetLookRotation(relativePos,Vector3.up);
    // }

    // void Update()
    // {
        
    // }

    // //Handle planet movement and rotation
    // private void FixedUpdate()
    // {
    //     float turnVertical = Input.GetAxis("Vertical") * rotationSpeed  * Time.fixedDeltaTime;
    //     float turnHorizontal = Input.GetAxis("Horizontal") * rotationSpeed * Time.fixedDeltaTime;
    //     relativePos = target.position;
    //     turnRotation = Quaternion.Euler(0f, turnHorizontal, 0f);
    //     if ((Input.GetAxis("Horizontal") > 0) || Input.GetAxis("Horizontal") < 0)
    //     {
    //        rb.MoveRotation(rb.rotation * turnRotation);
    //     }
    //     turnRotation.SetLookRotation(relativePos,Vector3.forward);
        // if (turnVertical > 0 || turnVertical < 0)
        // {
        //     transform.rotation = Quaternion.LookRotation(relativePos, relativePos);
        //     target.rotation = transform.rotation;
        //     rb.MoveRotation(rb.rotation * turnRotation);

        //     var step = rotationSpeed * Time.deltaTime;
        //     transform.rotation = Quaternion.RotateTowards(transform.rotation, turnRotation, step);
        // }
        // else if (turnVertical < 0)
        // {
            
        // }

        // transform.rotation = Quaternion.FromToRotation(transform.forward, relativePos) * transform.rotation;


        // float turnHorizontal = Input.GetAxis("Horizontal") * rotationSpeed * Time.fixedDeltaTime;
        // float turnVertical = Input.GetAxis("Vertical") * rotationSpeed  * Time.fixedDeltaTime * -1;
        
        // relativePos = target.position;
        // turnRotation.SetLookRotation(relativePos,Vector3.up);
        // if (turnVertical > 0 || turnVertical < 0)
        // {
        //     rb.MoveRotation(rb.rotation * turnRotation);
        // }
        
       
        // if ((Input.GetAxis("Horizontal") > 0) || Input.GetAxis("Horizontal") < 0)
        // {
        //     turnAmount = transform.rotation.x;
        //    turnRotation = Quaternion.Euler(0f, turnHorizontal, 0f);
        //    rb.MoveRotation(rb.rotation * turnRotation);
        // }
        
        // if (Input.GetAxis("Vertical") < 0)
        // {
        //     turnAmount = transform.rotation.y * -1;
        //     turnRotation = Quaternion.Euler(turnVertical, 0f, 0f);
        //     rb.MoveRotation(rb.rotation * turnRotation);
        // }
        // else if (Input.GetAxis("Vertical") > 0)
        // {
        //     turnAmount = transform.rotation.y;
        //     turnRotation = Quaternion.Euler(turnVertical, 0f, 0f);
        //     rb.MoveRotation(rb.rotation * turnRotation);
        // }
        
        
//     }
}
