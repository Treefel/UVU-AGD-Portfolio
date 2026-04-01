using UnityEngine;
using UnityEngine.Events;

public class InventoryControl : MonoBehaviour
{
    public InventoryData inventoryDataObj;
    [SerializeField] private InventoryItem inventoryItemObj;
    public UnityEvent onMouseDownEvent;
    public bool active;
    
    void Awake()
    {

    }
    private void OnMouseDown()
    {
        Debug.Log("I WAS CLICKED");
        onMouseDownEvent.Invoke();
    }
    
    //remove inventory item and return it to store
    public void RemoveFromInventory()
    {
        Debug.Log("removing item");
        inventoryDataObj.RemoveFromInventory(inventoryItemObj);
        gameObject.SetActive(active);
    }
    
    //Add inventory item to inventory and remove it from store
    public void AddToInventory()
    {
        inventoryDataObj.AddToInventory(inventoryItemObj);
        gameObject.SetActive(active);
    }

    public void SetInventoryItem(InventoryItem item)
    {
        inventoryItemObj = item;
    }
    public void SetInventoryItemFromThisObject()
    {
        inventoryItemObj = gameObject.GetComponent<InventoryUIButtonBehaviour>().GetInventoryItem();
        Debug.Log(inventoryItemObj.ThisName);
    }
}
