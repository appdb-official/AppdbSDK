**CLASS**

# `Appdb`

```swift
public class Appdb
```

## Methods
### `isInstalledViaAppdb()`

```swift
func isInstalledViaAppdb() -> Bool
```

Check if current app installed via appdb

- Returns:
    `True` if app installed via appdb services or `False` if not

### `getPersistentCustomerIdentifier()`

```swift
func getPersistentCustomerIdentifier() -> Result<String, AppdbError>
```

Returns unique persistent appdb `customer` identifier of current app

- Returns:
    `Identifier string` or `AppdbError`

### `getPersistentDeviceIdentifier()`

```swift
func getPersistentDeviceIdentifier() -> Result<String, AppdbError>
```

Returns unique persistent appdb `device` identifier of current app

- Returns:
    `Identifier string` or `AppdbError`

### `getAppleBundleIdentifier()`

```swift
func getAppleBundleIdentifier() -> Result<String, AppdbError>
```

Returns bundle identifier of current app

- Returns:
    `Identifier string` or `AppdbError`

### `getAppleAppGroupIdentifier()`

```swift
func getAppleAppGroupIdentifier() -> Result<String, AppdbError>
```

Returns unique appdb apple app group identifier

- Returns:
    `Identifier string` or `AppdbError`

### `getAppdbAppIdentifier()`

```swift
func getAppdbAppIdentifier() -> Result<String, AppdbError>
```

Returns unique appdb identifier of current app

- Returns:
    `Identifier string` or `AppdbError`

### `getAlongsideIdentifier()`

```swift
func getAlongsideIdentifier() -> Result<String, AppdbError>
```

Returns alongside identifier

- Returns:
    `Alongside identifier` or `AppdbError` (If not exists return empty string)

### `getInstallationUUID()`

```swift
func getInstallationUUID() -> Result<String, AppdbError>
```

Returns installation UUID

- Returns:
    `UUID String` or `AppdbError`

### `assignPushToken(data:completion:)`

```swift
func assignPushToken(data: Data, completion: @escaping (Result<Void, AppdbError>) -> Void)
```

Register device to receive push notifications

- Parameters:
    - data: Push token data
    - completion: Return `success` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| data | Push token data |
| completion | Return `success` or `AppdbError` |

### `getSupportedServicesIdentifiers()`

```swift
func getSupportedServicesIdentifiers() -> Result<[String], AppdbError>
```

Returns available supported services information

[List of services and features](https://rtfm.dbservices.to/#/services-and-features/overview)

- Returns:
    `Array of supported services` or `AppdbError`

### `askCustomerToEnableOpenIn()`

```swift
func askCustomerToEnableOpenIn() -> Result<Void, AppdbError>
```

Show the onboarding for `deeplinks` in separate window

- Returns:
    `Success` or `AppdbError`

### `registerAppAttestation(challenge:completion:)`

```swift
func registerAppAttestation(
    challenge: String,
    completion: @escaping (Result<Void, AppdbError>) -> Void
)
```

Setup current app to use app attestation

- Parameters:
    - challenge: The *x* component of the vector.
    - completion: Return `success` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| challenge | The  component of the vector. |
| completion | Return `success` or `AppdbError` |

### `generateDataAssertion(clientData:completion:)`

```swift
func generateDataAssertion(
    clientData: Data,
    completion: @escaping (Result<String, AppdbError>) -> Void
)
```

Generate data assertion string to validate data

- Parameters:
    - clientData: Data to validate
    - completion: Return base64 `data assertion string` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| clientData | Data to validate |
| completion | Return base64 `data assertion string` or `AppdbError` |

### `isAppUpdateAvailable(completion:)`

```swift
func isAppUpdateAvailable(
    completion: @escaping (Result<Bool, AppdbError>) -> Void
)
```

Check current app for new version

- Parameters:
    - completion: Return `True` if update is available or `False` if not. In case of failed request return `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| completion | Return `True` if update is available or `False` if not. In case of failed request return `AppdbError` |

### `getAppdbStoreURL()`

```swift
func getAppdbStoreURL() -> Result<URL, AppdbError>
```

Returns url of appdb url of current app

- Returns:
    `URL` or `AppdbError`

### `storeBackup(backupIDKey:value:completion:)`

```swift
func storeBackup(
    backupIDKey: String,
    value: [String: Any],
    completion: @escaping (Result<Void, AppdbError>) -> Void
)
```

Store backup in remote storage

- Parameters:
    - backupIDKey: Unique sha256 hash string used to identify backup
    - value: Dictionary to backup
    - completion: Return `success` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| backupIDKey | Unique sha256 hash string used to identify backup |
| value | Dictionary to backup |
| completion | Return `success` or `AppdbError` |

### `getBackup(backupIDKey:completion:)`

```swift
func getBackup(
    backupIDKey: String,
    completion: @escaping (Result<[String: Any], AppdbError>) -> Void
)
```

Return backup from remote storage

- Parameters:
    - backupIDKey: Unique sha256 hash string used to identify backup
    - completion: Return `Dictionary` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| backupIDKey | Unique sha256 hash string used to identify backup |
| completion | Return `Dictionary` or `AppdbError` |

### `purgeBackup(backupIDKey:completion:)`

```swift
func purgeBackup(
    backupIDKey: String,
    completion: @escaping (Result<Void, AppdbError>) -> Void
)
```

Purge backup from remote storage

- Parameters:
    - backupIDKey: Unique sha256 hash string used to identify backup
    - completion: Return `success` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| backupIDKey | Unique sha256 hash string used to identify backup |
| completion | Return `success` or `AppdbError` |

### `getDeveloperInformation()`

```swift
func getDeveloperInformation() -> Result<[String: String], AppdbError>
```

Returns the developer information

- Returns:
    `Dictionary with the developer information` or `AppdbError`

### `showDeveloperInformation()`

```swift
func showDeveloperInformation() -> Result<Void, AppdbError>
```

Show the developer information in separate window modally

- Returns:
    `Success` or `AppdbError`

### `showInAppPurchaseProductMetadata(productIdentifier:completion:)`

```swift
func showInAppPurchaseProductMetadata(
    productIdentifier: String,
    completion: @escaping (Result<Void, AppdbError>) -> Void
) -> Void
```

Returns the product metadata information

- Parameters:
    - productIdentifier: string used to identify product
- Returns:
    `Dictionary with the metadata information` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| productIdentifier | string used to identify product |

### `initInAppPurchase(productIdentifier:)`

```swift
func initInAppPurchase(
    productIdentifier: String
)
```

Start in app purchase

- Parameters:
    - productIdentifier: string used to identify product

#### Parameters

| Name | Description |
| ---- | ----------- |
| productIdentifier | string used to identify product |

### `setupInAppPurchaseHandler(_:)`

```swift
func setupInAppPurchaseHandler(
    _ handler: @escaping (String, Result<Bool, AppdbError>) -> Void
)
```

In app purchase handler (listener)

- Parameters:
    - handler: Return productIdentifier and status of current in app purchase transaction

#### Parameters

| Name | Description |
| ---- | ----------- |
| handler | Return productIdentifier and status of current in app purchase transaction |

### `handleDeeplink(_:)`

```swift
func handleDeeplink(_ url: URL) -> Void
```

Handle custom Appdb deeplinks (for example: in-app purchase deeplinks)

- Parameters:
    - url: Deeplink url

#### Parameters

| Name | Description |
| ---- | ----------- |
| url | Deeplink url |

### `syncInAppConsumable(productIdentifier:completion:)`

```swift
func syncInAppConsumable(
    productIdentifier: String,
    completion: @escaping (Result<Int, AppdbError>) -> Void
)
```

Returns count of the InApp consumable product

- Parameters:
    - productIdentifier: string used to identify product
- Returns:
    `Number of remaining consumable items` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| productIdentifier | string used to identify product |

### `setInAppConsumableAmount(productIdentifier:amount:completion:)`

```swift
func setInAppConsumableAmount(
    productIdentifier: String,
    amount: Int,
    completion: @escaping (Result<Int, AppdbError>) -> Void
)
```

Returns the product metadata information

- Parameters:
    - productIdentifier: string used to identify product
    - amount: amount of remaining consumable items
- Returns:
    `Number of remaining consumable items` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| productIdentifier | string used to identify product |
| amount | amount of remaining consumable items |

### `getSubscriptionStatus(productIdentifier:completion:)`

```swift
func getSubscriptionStatus(
    productIdentifier: String,
    completion: @escaping (Result<SubscriptionStatusDataModel, AppdbError>) -> Void
)
```

Returns the status of InApp subscription

- Parameters:
    - productIdentifier: string used to identify product
- Returns:
    `Current status of subscription` or `AppdbError`

#### Parameters

| Name | Description |
| ---- | ----------- |
| productIdentifier | string used to identify product |