**ENUM**

# `AppdbError`

```swift
public enum AppdbError: Error
```

## Cases
### `notInstalledViaAppdb`

```swift
case notInstalledViaAppdb
```

### `serviceNotAvailable(service:)`

```swift
case serviceNotAvailable(service: Services)
```

### `apiErrors(errors:)`

```swift
case apiErrors(errors: [APIError])
```

### `unhandled(details:)`

```swift
case unhandled(details: String)
```

### `underlying(error:)`

```swift
case underlying(error: Error)
```
