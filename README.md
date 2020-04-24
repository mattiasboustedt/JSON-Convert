# JSON Convert

Used for serializing records in Business Central without calling (for example) Newtonsoft.Json.JsonSerializer.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Support](#support)
- [Contributing](#contributing)

## Installation

Clone repository, download symbols, and install solution using AL: Publish (or similar).

## Usage

- Retrieve the record you would like to serialize.
- Call the "SerializeObject" function as displayed below.

```C#
MyRecord.Get();
RecordRef.GetTable(MyRecord);
JObject := JSONConvert.SerializeObject(RecordRef);
```

## Support

Please [open an issue](https://github.com/fraction/readme-boilerplate/issues/new) for support.

## Contributing

Please contribute by creating a branch, add commits, and open a pull request.
