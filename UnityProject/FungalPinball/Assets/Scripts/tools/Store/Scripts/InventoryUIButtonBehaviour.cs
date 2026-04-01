using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class InventoryUIButtonBehaviour : MonoBehaviour
{
    public Button ButtonObj { get; private set; }
    public TextMeshProUGUI Label { get; private set; }
    
    public InventoryItem InventoryItemObj { get; set; }

    public InventoryData inventoryDataObj;
    private bool wait = false;
    // [SerializeField] private GameActionAdvanced invFullExit;
    // [SerializeField] private GameAction test;


    protected virtual void Awake()
    {
        wait = false;
        ButtonObj = GetComponent<Button>();
        Label = ButtonObj.GetComponentInChildren<TextMeshProUGUI>();
     
        if (ButtonObj != null)
        {
            ButtonObj.onClick.AddListener(HandleButtonClick);
        }
    }

    public void ConfigButton(IInventoryItem inventoryItem)
    {
        ButtonObj.image.sprite = inventoryItem.PreviewArt;
        Label.text = inventoryItem.ThisName;
        ButtonObj.interactable = inventoryItem.UsedOrPurchase;
        InventoryItemObj = inventoryItem as InventoryItem;
        if(inventoryItem.GameActionObj != null)
        {
            // if (invFullExit != null) ButtonObj.onClick.AddListener(CheckRemoveItem);
            InventoryItemObj.ConfigRaise();
            Debug.Log("config raised");
            ButtonObj.onClick.AddListener(inventoryItem.Raise);
            
            
        }
        else
        {
            ButtonObj.interactable = false;
        }
    }

    private void HandleButtonClick()
    {
        if (InventoryItemObj == null) return;
        InventoryItemObj.UsedOrPurchase = false;
        ButtonObj.interactable = false;
    }

    public void RemoveFromInventory()
    {
        Debug.Log("removing item" + InventoryItemObj.ThisName);
        inventoryDataObj.RemoveFromInventory(InventoryItemObj);
    }

    public void AddToInventory()
    {
        inventoryDataObj.AddToInventory(InventoryItemObj);
    }

    public void AddToInventoryRepeatable()
    {
        inventoryDataObj.AddToInventoryRepeatable(InventoryItemObj);
    }

    // public void CheckRemoveItem()
    // {
    //     if (wait && (invFullExit != null)) 
    //         {
    //             int i = 0;
    //             Debug.Log("inventory full exit i guess");
    //             // string objName = InventoryItemObj.ThisName;
    //             // Debug.Log(objName);
                
    //             // invFullExit.RaiseAction(objName);
    //             invFullExit.RaiseAction(i);
    //         }
    //     else Debug.Log("failed checkremoveitem");
    // }
    // if (wait && (invFullExit != null)) 
    //     {
    //         Debug.Log("inventory full exit i guess");
    //         invFullExit.RaiseAction(InventoryItemObj.ThisName);
    //     }

    // public void ReplaceButton(InventoryUIButtonBehaviour newButton)
    // {
    //     if (chosenOne)
    //     {
            
    //     }
    // }
    // public void WaitForAction(bool waiting)
    // {
    //     wait = waiting;
    // }

    public InventoryItem GetInventoryItem()
    {
        return InventoryItemObj;
    }

}