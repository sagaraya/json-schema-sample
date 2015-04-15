JSONスキーマはじめの一歩

## Dependency
```
gem install json-schema
```

## Usage
```
ruby validation.rb
```

### Result
```
[]
["The property '#/name' of type NilClass did not match the following type: string in schema ecf16823-628c-5899-a01c-4978dcd6883b#", "The property '#/place/address' of type Array did not match the following type: string in schema ecf16823-628c-5899-a01c-4978dcd6883b#"]
```

1行目はvalid-bookshop.jsonのvalidation結果。特にエラーは発生してない。
2行目はinvalid-bookshop.jsonの結果。nameがnullになっているのと、addressがArrayになっているため、エラーが発生している。
