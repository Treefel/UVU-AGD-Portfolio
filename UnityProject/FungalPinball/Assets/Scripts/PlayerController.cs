using System.Runtime.Serialization;
using UnityEngine;

// Controls player movement and rotation.
public class PlayerController : MonoBehaviour
{
    [SerializeField]
    private GameAction flipperL;
    [SerializeField]
    private GameAction flipperR;
    [SerializeField]
    private GameAction flipperDown;
    [SerializeField]
    private GameAction shoot;
    [SerializeField]
    private GameAction shootEnd;
    [SerializeField]
    private GameAction sporeSpawn;
    private bool canSpawn;

    // public GameAction del;
    
    
    // private Rigidbody rb; // Reference to player's Rigidbody.


    // Start is called before the first frame update
    private void Awake()
    {
        // rb = GetComponent<Rigidbody>(); // Access player's Rigidbody.
        canSpawn = true;
    }


    // Update is called once per frame
    void Update()
    {

        if (Input.GetButton("Fire1"))
        {
            shoot.Raise();
        }
        if (Input.GetButtonUp("Fire1"))
        {
            shootEnd.Raise();
        }
        if (Input.GetButtonDown("Fire2") && canSpawn)
        {
            Debug.Log("spawning");
            // canSpawn = false;
            sporeSpawn.Raise();
        }
        if (Input.GetKey(KeyCode.A))
        {
            flipperL.Raise();
        }
        else if (Input.GetKey(KeyCode.D))
        {
            flipperR.Raise();
        }
        else flipperDown.Raise();
    }

    public void spawnToggle(bool value)
    {
        canSpawn = value;
    }

    // Handle physics-based movement and rotation.
    // private void FixedUpdate()
    // {  
    //     Movement();
    // }


    // private void Movement()
    // {
    //     if (canMove)
    //     {
    //         // Vector3 moveDir = new Vector3(Input.GetAxisRaw("Horizontal"), 0, Input.GetAxisRaw("Vertical"));
    //         // Move player based on vertical & horizontal input.
    //         float moveVertical = Input.GetAxis("Vertical");
    //         float moveHorizontal = Input.GetAxis("Horizontal");
    //         Vector3 movementHor = transform.right * moveHorizontal * speed * Time.fixedDeltaTime;
    //         Vector3 movementVer = transform.forward * moveVertical * speed * Time.fixedDeltaTime;
    //         rb.MovePosition(rb.position + movementHor + movementVer);
    //     }
            
    //     if (rb.linearVelocity.y < 0)
    //     {
    //         Falling();
    //     }
    // }



}
