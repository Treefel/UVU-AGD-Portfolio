using UnityEngine;

public class DeleteChildren : MonoBehaviour
{
    public void DeleteAllChildren()
    {
        foreach (Transform child in transform)
        {
            Destroy(child.gameObject);
        }
    }
}
