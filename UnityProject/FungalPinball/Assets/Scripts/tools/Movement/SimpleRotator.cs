using UnityEngine;

public class SimpleRotator : MonoBehaviour
{
    public float rotationSpeed = 100f;
    [SerializeField] private string axis;

    void Update()
    {
        // Rotate the object around the Y axis
        if (axis == "X")
            transform.Rotate(rotationSpeed * Time.deltaTime, 0, 0);
        else if (axis == "Y")
        transform.Rotate(0, rotationSpeed * Time.deltaTime, 0);
        else if (axis == "Z")
            transform.Rotate(0, 0, rotationSpeed * Time.deltaTime);
        else
            Debug.LogWarning("put in an actual axis man, X,Y,Z");
    }
}