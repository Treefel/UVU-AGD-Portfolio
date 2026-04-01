using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

[RequireComponent(typeof(Button))]
public class StoreUIButtonBehaviour : InventoryUIButtonBehaviour
{
    public GameAction purchaseActionObj;
    public UnityEvent purchaseEvent, noPurchaseEvent;
    public IntData cash;
    public Text PriceLabel { get; private set; }
    public Toggle ToggleObj { get; private set; }
    public IStoreItem StoreItemObj { get; set; }
    
    protected override void Awake()
    {
        base.Awake();
        ToggleObj = GetComponentInChildren<Toggle>();
        PriceLabel = ToggleObj.GetComponentInChildren<Text>();
        ButtonObj.onClick.AddListener(AttemptPurchase);
    }

    public void ConfigButton(IStoreItem storeItem)
    {
        if (storeItem == null) return;
        ButtonObj.image.sprite = storeItem.PreviewArt;
        Label.text = storeItem.ThisName;
        ButtonObj.interactable = !storeItem.UsedOrPurchase;
        StoreItemObj = storeItem;
        SetInventoryItemFromStoreItem();
        // ToggleObj.isOn = storeItem.UsedOrPurchase;
        ToggleObj.isOn = true;
        PriceLabel.text = $"${storeItem.Price}";
    }
    
    private void AttemptPurchase()
    {
        if (StoreItemObj.Price <= cash.Value)
        {
            if (inventoryDataObj.GetInventoryCount() < inventoryDataObj.GetItemMax() || inventoryDataObj.GetItemMax() == 0)
            {
                // StoreItemObj.UsedOrPurchase = true;
                // ToggleObj.isOn = true;
                cash.UpdateValue(-StoreItemObj.Price);
                ButtonObj.interactable = false;
                purchaseEvent?.Invoke();
                purchaseActionObj.RaiseNoArgs();
                // AddToInventoryRepeatable();
            }
            else 
            {
                Debug.Log("Inventory Full");
                StoreItemObj.UsedOrPurchase = false;
                ButtonObj.interactable = true;
            }
        }
        else
        {
            noPurchaseEvent?.Invoke();
        }
    }

    public void SetInventoryItemFromStoreItem()
    {
        InventoryItemObj = StoreItemObj as InventoryItem;
    }

    //     public void RemoveFromStore()
    // {
    //     Debug.Log("removing item" + InventoryItemObj.ThisName);
    //     invDataObj.RemoveFromInventory(InventoryItemObj);
    // }

    // public void AddToInventory()
    // {
    //     invDataObj.AddToInventory(InventoryItemObj);
    // }

    // public void AddToInventoryRepeatable()
    // {
    //     invDataObj.AddToInventoryRepeatable(InventoryItemObj);
    // }
}