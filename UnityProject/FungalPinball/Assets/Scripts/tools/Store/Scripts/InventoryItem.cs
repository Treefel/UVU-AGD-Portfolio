using UnityEngine;

[CreateAssetMenu (fileName = "InventoryItem", menuName = "Store/InventoryItem")]
public class InventoryItem : ScriptableObject, IStoreItem, IInventoryItem
{
    [SerializeField] private int price;
    [SerializeField] private Sprite previewArt;
    [SerializeField] private int intLevel;
    [SerializeField] private float floatLevel; // Changed to float
    [SerializeField] private GameObject gameArt;
    [SerializeField] private bool usedOrPurchase;
    [SerializeField] private GameAction gameActionObj;
    [SerializeField] private GameAction configActionObj;
    // [SerializeField] private GameActionAdvanced advancedActionObj;

    void Awake()
    {
        
    }

    // IStoreItem and IInventoryItem Implementation
    public int Price { get => price; set => price = value; }
    public bool UsedOrPurchase { get => usedOrPurchase; set => usedOrPurchase = value; }
    public int IntLevel { get => intLevel; set => intLevel = value; }
    public float FloatLevel { get => floatLevel; set => floatLevel = value; } // Corrected type
    public Sprite PreviewArt { get => previewArt; set => previewArt = value; }
    public GameObject GameArt { get => gameArt; set => gameArt = value; }
    public string ThisName
    {
        get => name; // Directly return the scriptable object's name
        set => name = value;
    }

    public PurchaseType.Type ItemPurchaseType { get; set; }

    public GameAction GameActionObj
    {
        get => gameActionObj;
        set => gameActionObj = value;
    }

    public void Raise()
    {
        if (gameActionObj != null)
        {
            // gameActionObj.RaiseNoArgs();
            gameActionObj.Raise();
        } 
    }
    public void ConfigRaise()
    {
        if (configActionObj != null)
        {
            configActionObj.Raise();
            // configActionObj.RaiseNoArgs();
        }
        else Debug.Log("item null");
    }

    // public GameObject GetGameArt()
    // {
    //     return gameArt;
    // }

    // public void RaiseObject(GameObject obj)
    // {
    //     if (advancedActionObj != null) advancedActionObj.Raise(obj);
    // }
}