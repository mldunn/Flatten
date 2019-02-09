# Flatten
Playground with code for flattening array


## Usage

Download and unzip the playground file, open in xcode

#### flattenInts(_ arr: [Any])

```
let input: [Any] =  [[1,2,[3]],4] 
let output: [Int] = flattenInts(input)
assert(output == [1,2,3,4])
```

#### Array extension

```
let input: [Any] =  [[1,2,[3]],4] 
let output: [Int] = input.flatten()  
assert(output == [1,2,3,4])
```

## Details

Contains an extension on Array that will flatten a nested array to a single level array with all items, also contains a helper function to use for integers. 
