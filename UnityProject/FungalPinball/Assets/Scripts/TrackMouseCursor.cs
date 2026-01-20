using UnityEngine;

public class TrackMouseCursor : MonoBehaviour
{
    [SerializeField]
    private Vector3Data mouse;
    
    // public Transform playerPos;
    private Transform curObject;
    public Camera cam;

    // private Vector3 target;


    private int width;
    private int height;
    
    void Awake()
    {
        curObject = this.gameObject.GetComponent<Transform>();
    }
    void OnGUI()
    {
        TrackMouse();
    }

    private void TrackMouse()
    {
        width = Screen.width;
        height = Screen.height;

        Vector3 point = new Vector3();
        Event currentEvent = Event.current;
        Vector3 mousePos = new Vector3();
        
        mousePos.x = currentEvent.mousePosition.x;
        mousePos.y = currentEvent.mousePosition.y;
        mousePos.z = cam.transform.position.z * -1;
        // Debug.Log(mousePos);

        if (mousePos.x < 0) mousePos.x = 0;
        if (mousePos.y < 0) mousePos.y = 0;
        if (mousePos.x > width) mousePos.x = width;
        if (mousePos.y > height) mousePos.y = height;

        point = cam.ScreenToWorldPoint(new Vector3(
            mousePos.x, 
            (mousePos.y * -1) + height, 
            mousePos.z
            ));
        // Debug.Log(point);

        

        GUILayout.BeginArea(new Rect(20, 20, 250, 120));
        GUILayout.Label("Screen pixels: " + cam.pixelWidth + ":" + cam.pixelHeight);
        GUILayout.Label("Mouse position: " + mousePos);
        GUILayout.Label("World position: " + point.ToString("F3"));
        GUILayout.EndArea();


        // target = new Vector3(
        //     point.x - playerPos.position.x,
        //     point.y - playerPos.position.y + 1,
        //     point.z - playerPos.position.z
        // );
        mouse.value = point;
        curObject.position = point;
        // DrawProjection(target);        
    }
}
