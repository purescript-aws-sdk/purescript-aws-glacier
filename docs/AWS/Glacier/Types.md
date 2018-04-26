## Module AWS.Glacier.Types

#### `options`

``` purescript
options :: Options
```

#### `AbortMultipartUploadInput`

``` purescript
newtype AbortMultipartUploadInput
  = AbortMultipartUploadInput { accountId :: String, vaultName :: String, uploadId :: String }
```

<p>Provides options to abort a multipart upload identified by the upload ID.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart Upload</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>

##### Instances
``` purescript
Newtype AbortMultipartUploadInput _
Generic AbortMultipartUploadInput _
Show AbortMultipartUploadInput
Decode AbortMultipartUploadInput
Encode AbortMultipartUploadInput
```

#### `newAbortMultipartUploadInput`

``` purescript
newAbortMultipartUploadInput :: String -> String -> String -> AbortMultipartUploadInput
```

Constructs AbortMultipartUploadInput from required parameters

#### `newAbortMultipartUploadInput'`

``` purescript
newAbortMultipartUploadInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, uploadId :: String } -> { accountId :: String, vaultName :: String, uploadId :: String }) -> AbortMultipartUploadInput
```

Constructs AbortMultipartUploadInput's fields from required parameters

#### `AbortVaultLockInput`

``` purescript
newtype AbortVaultLockInput
  = AbortVaultLockInput { accountId :: String, vaultName :: String }
```

<p>The input values for <code>AbortVaultLock</code>.</p>

##### Instances
``` purescript
Newtype AbortVaultLockInput _
Generic AbortVaultLockInput _
Show AbortVaultLockInput
Decode AbortVaultLockInput
Encode AbortVaultLockInput
```

#### `newAbortVaultLockInput`

``` purescript
newAbortVaultLockInput :: String -> String -> AbortVaultLockInput
```

Constructs AbortVaultLockInput from required parameters

#### `newAbortVaultLockInput'`

``` purescript
newAbortVaultLockInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> AbortVaultLockInput
```

Constructs AbortVaultLockInput's fields from required parameters

#### `AccessControlPolicyList`

``` purescript
newtype AccessControlPolicyList
  = AccessControlPolicyList (Array Grant)
```

##### Instances
``` purescript
Newtype AccessControlPolicyList _
Generic AccessControlPolicyList _
Show AccessControlPolicyList
Decode AccessControlPolicyList
Encode AccessControlPolicyList
```

#### `ActionCode`

``` purescript
newtype ActionCode
  = ActionCode String
```

##### Instances
``` purescript
Newtype ActionCode _
Generic ActionCode _
Show ActionCode
Decode ActionCode
Encode ActionCode
```

#### `AddTagsToVaultInput`

``` purescript
newtype AddTagsToVaultInput
  = AddTagsToVaultInput { accountId :: String, vaultName :: String, "Tags" :: Maybe (TagMap) }
```

<p>The input values for <code>AddTagsToVault</code>.</p>

##### Instances
``` purescript
Newtype AddTagsToVaultInput _
Generic AddTagsToVaultInput _
Show AddTagsToVaultInput
Decode AddTagsToVaultInput
Encode AddTagsToVaultInput
```

#### `newAddTagsToVaultInput`

``` purescript
newAddTagsToVaultInput :: String -> String -> AddTagsToVaultInput
```

Constructs AddTagsToVaultInput from required parameters

#### `newAddTagsToVaultInput'`

``` purescript
newAddTagsToVaultInput' :: String -> String -> ({ accountId :: String, vaultName :: String, "Tags" :: Maybe (TagMap) } -> { accountId :: String, vaultName :: String, "Tags" :: Maybe (TagMap) }) -> AddTagsToVaultInput
```

Constructs AddTagsToVaultInput's fields from required parameters

#### `ArchiveCreationOutput`

``` purescript
newtype ArchiveCreationOutput
  = ArchiveCreationOutput { location :: Maybe (String), checksum :: Maybe (String), archiveId :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>

##### Instances
``` purescript
Newtype ArchiveCreationOutput _
Generic ArchiveCreationOutput _
Show ArchiveCreationOutput
Decode ArchiveCreationOutput
Encode ArchiveCreationOutput
```

#### `newArchiveCreationOutput`

``` purescript
newArchiveCreationOutput :: ArchiveCreationOutput
```

Constructs ArchiveCreationOutput from required parameters

#### `newArchiveCreationOutput'`

``` purescript
newArchiveCreationOutput' :: ({ location :: Maybe (String), checksum :: Maybe (String), archiveId :: Maybe (String) } -> { location :: Maybe (String), checksum :: Maybe (String), archiveId :: Maybe (String) }) -> ArchiveCreationOutput
```

Constructs ArchiveCreationOutput's fields from required parameters

#### `CSVInput`

``` purescript
newtype CSVInput
  = CSVInput { "FileHeaderInfo" :: Maybe (FileHeaderInfo), "Comments" :: Maybe (String), "QuoteEscapeCharacter" :: Maybe (String), "RecordDelimiter" :: Maybe (String), "FieldDelimiter" :: Maybe (String), "QuoteCharacter" :: Maybe (String) }
```

<p>Contains information about the comma-separated value (CSV) file to select from.</p>

##### Instances
``` purescript
Newtype CSVInput _
Generic CSVInput _
Show CSVInput
Decode CSVInput
Encode CSVInput
```

#### `newCSVInput`

``` purescript
newCSVInput :: CSVInput
```

Constructs CSVInput from required parameters

#### `newCSVInput'`

``` purescript
newCSVInput' :: ({ "FileHeaderInfo" :: Maybe (FileHeaderInfo), "Comments" :: Maybe (String), "QuoteEscapeCharacter" :: Maybe (String), "RecordDelimiter" :: Maybe (String), "FieldDelimiter" :: Maybe (String), "QuoteCharacter" :: Maybe (String) } -> { "FileHeaderInfo" :: Maybe (FileHeaderInfo), "Comments" :: Maybe (String), "QuoteEscapeCharacter" :: Maybe (String), "RecordDelimiter" :: Maybe (String), "FieldDelimiter" :: Maybe (String), "QuoteCharacter" :: Maybe (String) }) -> CSVInput
```

Constructs CSVInput's fields from required parameters

#### `CSVOutput`

``` purescript
newtype CSVOutput
  = CSVOutput { "QuoteFields" :: Maybe (QuoteFields), "QuoteEscapeCharacter" :: Maybe (String), "RecordDelimiter" :: Maybe (String), "FieldDelimiter" :: Maybe (String), "QuoteCharacter" :: Maybe (String) }
```

<p>Contains information about the comma-separated value (CSV) file that the job results are stored in.</p>

##### Instances
``` purescript
Newtype CSVOutput _
Generic CSVOutput _
Show CSVOutput
Decode CSVOutput
Encode CSVOutput
```

#### `newCSVOutput`

``` purescript
newCSVOutput :: CSVOutput
```

Constructs CSVOutput from required parameters

#### `newCSVOutput'`

``` purescript
newCSVOutput' :: ({ "QuoteFields" :: Maybe (QuoteFields), "QuoteEscapeCharacter" :: Maybe (String), "RecordDelimiter" :: Maybe (String), "FieldDelimiter" :: Maybe (String), "QuoteCharacter" :: Maybe (String) } -> { "QuoteFields" :: Maybe (QuoteFields), "QuoteEscapeCharacter" :: Maybe (String), "RecordDelimiter" :: Maybe (String), "FieldDelimiter" :: Maybe (String), "QuoteCharacter" :: Maybe (String) }) -> CSVOutput
```

Constructs CSVOutput's fields from required parameters

#### `CannedACL`

``` purescript
newtype CannedACL
  = CannedACL String
```

##### Instances
``` purescript
Newtype CannedACL _
Generic CannedACL _
Show CannedACL
Decode CannedACL
Encode CannedACL
```

#### `CompleteMultipartUploadInput`

``` purescript
newtype CompleteMultipartUploadInput
  = CompleteMultipartUploadInput { accountId :: String, vaultName :: String, uploadId :: String, archiveSize :: Maybe (String), checksum :: Maybe (String) }
```

<p>Provides options to complete a multipart upload operation. This informs Amazon Glacier that all the archive parts have been uploaded and Amazon Glacier can now assemble the archive from the uploaded parts. After assembling and saving the archive to the vault, Amazon Glacier returns the URI path of the newly created archive resource.</p>

##### Instances
``` purescript
Newtype CompleteMultipartUploadInput _
Generic CompleteMultipartUploadInput _
Show CompleteMultipartUploadInput
Decode CompleteMultipartUploadInput
Encode CompleteMultipartUploadInput
```

#### `newCompleteMultipartUploadInput`

``` purescript
newCompleteMultipartUploadInput :: String -> String -> String -> CompleteMultipartUploadInput
```

Constructs CompleteMultipartUploadInput from required parameters

#### `newCompleteMultipartUploadInput'`

``` purescript
newCompleteMultipartUploadInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, uploadId :: String, archiveSize :: Maybe (String), checksum :: Maybe (String) } -> { accountId :: String, vaultName :: String, uploadId :: String, archiveSize :: Maybe (String), checksum :: Maybe (String) }) -> CompleteMultipartUploadInput
```

Constructs CompleteMultipartUploadInput's fields from required parameters

#### `CompleteVaultLockInput`

``` purescript
newtype CompleteVaultLockInput
  = CompleteVaultLockInput { accountId :: String, vaultName :: String, lockId :: String }
```

<p>The input values for <code>CompleteVaultLock</code>.</p>

##### Instances
``` purescript
Newtype CompleteVaultLockInput _
Generic CompleteVaultLockInput _
Show CompleteVaultLockInput
Decode CompleteVaultLockInput
Encode CompleteVaultLockInput
```

#### `newCompleteVaultLockInput`

``` purescript
newCompleteVaultLockInput :: String -> String -> String -> CompleteVaultLockInput
```

Constructs CompleteVaultLockInput from required parameters

#### `newCompleteVaultLockInput'`

``` purescript
newCompleteVaultLockInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, lockId :: String } -> { accountId :: String, vaultName :: String, lockId :: String }) -> CompleteVaultLockInput
```

Constructs CompleteVaultLockInput's fields from required parameters

#### `CreateVaultInput`

``` purescript
newtype CreateVaultInput
  = CreateVaultInput { accountId :: String, vaultName :: String }
```

<p>Provides options to create a vault.</p>

##### Instances
``` purescript
Newtype CreateVaultInput _
Generic CreateVaultInput _
Show CreateVaultInput
Decode CreateVaultInput
Encode CreateVaultInput
```

#### `newCreateVaultInput`

``` purescript
newCreateVaultInput :: String -> String -> CreateVaultInput
```

Constructs CreateVaultInput from required parameters

#### `newCreateVaultInput'`

``` purescript
newCreateVaultInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> CreateVaultInput
```

Constructs CreateVaultInput's fields from required parameters

#### `CreateVaultOutput`

``` purescript
newtype CreateVaultOutput
  = CreateVaultOutput { location :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype CreateVaultOutput _
Generic CreateVaultOutput _
Show CreateVaultOutput
Decode CreateVaultOutput
Encode CreateVaultOutput
```

#### `newCreateVaultOutput`

``` purescript
newCreateVaultOutput :: CreateVaultOutput
```

Constructs CreateVaultOutput from required parameters

#### `newCreateVaultOutput'`

``` purescript
newCreateVaultOutput' :: ({ location :: Maybe (String) } -> { location :: Maybe (String) }) -> CreateVaultOutput
```

Constructs CreateVaultOutput's fields from required parameters

#### `DataRetrievalPolicy`

``` purescript
newtype DataRetrievalPolicy
  = DataRetrievalPolicy { "Rules" :: Maybe (DataRetrievalRulesList) }
```

<p>Data retrieval policy.</p>

##### Instances
``` purescript
Newtype DataRetrievalPolicy _
Generic DataRetrievalPolicy _
Show DataRetrievalPolicy
Decode DataRetrievalPolicy
Encode DataRetrievalPolicy
```

#### `newDataRetrievalPolicy`

``` purescript
newDataRetrievalPolicy :: DataRetrievalPolicy
```

Constructs DataRetrievalPolicy from required parameters

#### `newDataRetrievalPolicy'`

``` purescript
newDataRetrievalPolicy' :: ({ "Rules" :: Maybe (DataRetrievalRulesList) } -> { "Rules" :: Maybe (DataRetrievalRulesList) }) -> DataRetrievalPolicy
```

Constructs DataRetrievalPolicy's fields from required parameters

#### `DataRetrievalRule`

``` purescript
newtype DataRetrievalRule
  = DataRetrievalRule { "Strategy" :: Maybe (String), "BytesPerHour" :: Maybe (NullableLong) }
```

<p>Data retrieval policy rule.</p>

##### Instances
``` purescript
Newtype DataRetrievalRule _
Generic DataRetrievalRule _
Show DataRetrievalRule
Decode DataRetrievalRule
Encode DataRetrievalRule
```

#### `newDataRetrievalRule`

``` purescript
newDataRetrievalRule :: DataRetrievalRule
```

Constructs DataRetrievalRule from required parameters

#### `newDataRetrievalRule'`

``` purescript
newDataRetrievalRule' :: ({ "Strategy" :: Maybe (String), "BytesPerHour" :: Maybe (NullableLong) } -> { "Strategy" :: Maybe (String), "BytesPerHour" :: Maybe (NullableLong) }) -> DataRetrievalRule
```

Constructs DataRetrievalRule's fields from required parameters

#### `DataRetrievalRulesList`

``` purescript
newtype DataRetrievalRulesList
  = DataRetrievalRulesList (Array DataRetrievalRule)
```

##### Instances
``` purescript
Newtype DataRetrievalRulesList _
Generic DataRetrievalRulesList _
Show DataRetrievalRulesList
Decode DataRetrievalRulesList
Encode DataRetrievalRulesList
```

#### `DateTime`

``` purescript
newtype DateTime
  = DateTime String
```

##### Instances
``` purescript
Newtype DateTime _
Generic DateTime _
Show DateTime
Decode DateTime
Encode DateTime
```

#### `DeleteArchiveInput`

``` purescript
newtype DeleteArchiveInput
  = DeleteArchiveInput { accountId :: String, vaultName :: String, archiveId :: String }
```

<p>Provides options for deleting an archive from an Amazon Glacier vault.</p>

##### Instances
``` purescript
Newtype DeleteArchiveInput _
Generic DeleteArchiveInput _
Show DeleteArchiveInput
Decode DeleteArchiveInput
Encode DeleteArchiveInput
```

#### `newDeleteArchiveInput`

``` purescript
newDeleteArchiveInput :: String -> String -> String -> DeleteArchiveInput
```

Constructs DeleteArchiveInput from required parameters

#### `newDeleteArchiveInput'`

``` purescript
newDeleteArchiveInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, archiveId :: String } -> { accountId :: String, vaultName :: String, archiveId :: String }) -> DeleteArchiveInput
```

Constructs DeleteArchiveInput's fields from required parameters

#### `DeleteVaultAccessPolicyInput`

``` purescript
newtype DeleteVaultAccessPolicyInput
  = DeleteVaultAccessPolicyInput { accountId :: String, vaultName :: String }
```

<p>DeleteVaultAccessPolicy input.</p>

##### Instances
``` purescript
Newtype DeleteVaultAccessPolicyInput _
Generic DeleteVaultAccessPolicyInput _
Show DeleteVaultAccessPolicyInput
Decode DeleteVaultAccessPolicyInput
Encode DeleteVaultAccessPolicyInput
```

#### `newDeleteVaultAccessPolicyInput`

``` purescript
newDeleteVaultAccessPolicyInput :: String -> String -> DeleteVaultAccessPolicyInput
```

Constructs DeleteVaultAccessPolicyInput from required parameters

#### `newDeleteVaultAccessPolicyInput'`

``` purescript
newDeleteVaultAccessPolicyInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> DeleteVaultAccessPolicyInput
```

Constructs DeleteVaultAccessPolicyInput's fields from required parameters

#### `DeleteVaultInput`

``` purescript
newtype DeleteVaultInput
  = DeleteVaultInput { accountId :: String, vaultName :: String }
```

<p>Provides options for deleting a vault from Amazon Glacier.</p>

##### Instances
``` purescript
Newtype DeleteVaultInput _
Generic DeleteVaultInput _
Show DeleteVaultInput
Decode DeleteVaultInput
Encode DeleteVaultInput
```

#### `newDeleteVaultInput`

``` purescript
newDeleteVaultInput :: String -> String -> DeleteVaultInput
```

Constructs DeleteVaultInput from required parameters

#### `newDeleteVaultInput'`

``` purescript
newDeleteVaultInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> DeleteVaultInput
```

Constructs DeleteVaultInput's fields from required parameters

#### `DeleteVaultNotificationsInput`

``` purescript
newtype DeleteVaultNotificationsInput
  = DeleteVaultNotificationsInput { accountId :: String, vaultName :: String }
```

<p>Provides options for deleting a vault notification configuration from an Amazon Glacier vault.</p>

##### Instances
``` purescript
Newtype DeleteVaultNotificationsInput _
Generic DeleteVaultNotificationsInput _
Show DeleteVaultNotificationsInput
Decode DeleteVaultNotificationsInput
Encode DeleteVaultNotificationsInput
```

#### `newDeleteVaultNotificationsInput`

``` purescript
newDeleteVaultNotificationsInput :: String -> String -> DeleteVaultNotificationsInput
```

Constructs DeleteVaultNotificationsInput from required parameters

#### `newDeleteVaultNotificationsInput'`

``` purescript
newDeleteVaultNotificationsInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> DeleteVaultNotificationsInput
```

Constructs DeleteVaultNotificationsInput's fields from required parameters

#### `DescribeJobInput`

``` purescript
newtype DescribeJobInput
  = DescribeJobInput { accountId :: String, vaultName :: String, jobId :: String }
```

<p>Provides options for retrieving a job description.</p>

##### Instances
``` purescript
Newtype DescribeJobInput _
Generic DescribeJobInput _
Show DescribeJobInput
Decode DescribeJobInput
Encode DescribeJobInput
```

#### `newDescribeJobInput`

``` purescript
newDescribeJobInput :: String -> String -> String -> DescribeJobInput
```

Constructs DescribeJobInput from required parameters

#### `newDescribeJobInput'`

``` purescript
newDescribeJobInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, jobId :: String } -> { accountId :: String, vaultName :: String, jobId :: String }) -> DescribeJobInput
```

Constructs DescribeJobInput's fields from required parameters

#### `DescribeVaultInput`

``` purescript
newtype DescribeVaultInput
  = DescribeVaultInput { accountId :: String, vaultName :: String }
```

<p>Provides options for retrieving metadata for a specific vault in Amazon Glacier.</p>

##### Instances
``` purescript
Newtype DescribeVaultInput _
Generic DescribeVaultInput _
Show DescribeVaultInput
Decode DescribeVaultInput
Encode DescribeVaultInput
```

#### `newDescribeVaultInput`

``` purescript
newDescribeVaultInput :: String -> String -> DescribeVaultInput
```

Constructs DescribeVaultInput from required parameters

#### `newDescribeVaultInput'`

``` purescript
newDescribeVaultInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> DescribeVaultInput
```

Constructs DescribeVaultInput's fields from required parameters

#### `DescribeVaultOutput`

``` purescript
newtype DescribeVaultOutput
  = DescribeVaultOutput { "VaultARN" :: Maybe (String), "VaultName" :: Maybe (String), "CreationDate" :: Maybe (String), "LastInventoryDate" :: Maybe (String), "NumberOfArchives" :: Maybe (Number), "SizeInBytes" :: Maybe (Number) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype DescribeVaultOutput _
Generic DescribeVaultOutput _
Show DescribeVaultOutput
Decode DescribeVaultOutput
Encode DescribeVaultOutput
```

#### `newDescribeVaultOutput`

``` purescript
newDescribeVaultOutput :: DescribeVaultOutput
```

Constructs DescribeVaultOutput from required parameters

#### `newDescribeVaultOutput'`

``` purescript
newDescribeVaultOutput' :: ({ "VaultARN" :: Maybe (String), "VaultName" :: Maybe (String), "CreationDate" :: Maybe (String), "LastInventoryDate" :: Maybe (String), "NumberOfArchives" :: Maybe (Number), "SizeInBytes" :: Maybe (Number) } -> { "VaultARN" :: Maybe (String), "VaultName" :: Maybe (String), "CreationDate" :: Maybe (String), "LastInventoryDate" :: Maybe (String), "NumberOfArchives" :: Maybe (Number), "SizeInBytes" :: Maybe (Number) }) -> DescribeVaultOutput
```

Constructs DescribeVaultOutput's fields from required parameters

#### `Encryption`

``` purescript
newtype Encryption
  = Encryption { "EncryptionType" :: Maybe (EncryptionType), "KMSKeyId" :: Maybe (String), "KMSContext" :: Maybe (String) }
```

<p>Contains information about the encryption used to store the job results in Amazon S3. </p>

##### Instances
``` purescript
Newtype Encryption _
Generic Encryption _
Show Encryption
Decode Encryption
Encode Encryption
```

#### `newEncryption`

``` purescript
newEncryption :: Encryption
```

Constructs Encryption from required parameters

#### `newEncryption'`

``` purescript
newEncryption' :: ({ "EncryptionType" :: Maybe (EncryptionType), "KMSKeyId" :: Maybe (String), "KMSContext" :: Maybe (String) } -> { "EncryptionType" :: Maybe (EncryptionType), "KMSKeyId" :: Maybe (String), "KMSContext" :: Maybe (String) }) -> Encryption
```

Constructs Encryption's fields from required parameters

#### `EncryptionType`

``` purescript
newtype EncryptionType
  = EncryptionType String
```

##### Instances
``` purescript
Newtype EncryptionType _
Generic EncryptionType _
Show EncryptionType
Decode EncryptionType
Encode EncryptionType
```

#### `ExpressionType`

``` purescript
newtype ExpressionType
  = ExpressionType String
```

##### Instances
``` purescript
Newtype ExpressionType _
Generic ExpressionType _
Show ExpressionType
Decode ExpressionType
Encode ExpressionType
```

#### `FileHeaderInfo`

``` purescript
newtype FileHeaderInfo
  = FileHeaderInfo String
```

##### Instances
``` purescript
Newtype FileHeaderInfo _
Generic FileHeaderInfo _
Show FileHeaderInfo
Decode FileHeaderInfo
Encode FileHeaderInfo
```

#### `GetDataRetrievalPolicyInput`

``` purescript
newtype GetDataRetrievalPolicyInput
  = GetDataRetrievalPolicyInput { accountId :: String }
```

<p>Input for GetDataRetrievalPolicy.</p>

##### Instances
``` purescript
Newtype GetDataRetrievalPolicyInput _
Generic GetDataRetrievalPolicyInput _
Show GetDataRetrievalPolicyInput
Decode GetDataRetrievalPolicyInput
Encode GetDataRetrievalPolicyInput
```

#### `newGetDataRetrievalPolicyInput`

``` purescript
newGetDataRetrievalPolicyInput :: String -> GetDataRetrievalPolicyInput
```

Constructs GetDataRetrievalPolicyInput from required parameters

#### `newGetDataRetrievalPolicyInput'`

``` purescript
newGetDataRetrievalPolicyInput' :: String -> ({ accountId :: String } -> { accountId :: String }) -> GetDataRetrievalPolicyInput
```

Constructs GetDataRetrievalPolicyInput's fields from required parameters

#### `GetDataRetrievalPolicyOutput`

``` purescript
newtype GetDataRetrievalPolicyOutput
  = GetDataRetrievalPolicyOutput { "Policy" :: Maybe (DataRetrievalPolicy) }
```

<p>Contains the Amazon Glacier response to the <code>GetDataRetrievalPolicy</code> request.</p>

##### Instances
``` purescript
Newtype GetDataRetrievalPolicyOutput _
Generic GetDataRetrievalPolicyOutput _
Show GetDataRetrievalPolicyOutput
Decode GetDataRetrievalPolicyOutput
Encode GetDataRetrievalPolicyOutput
```

#### `newGetDataRetrievalPolicyOutput`

``` purescript
newGetDataRetrievalPolicyOutput :: GetDataRetrievalPolicyOutput
```

Constructs GetDataRetrievalPolicyOutput from required parameters

#### `newGetDataRetrievalPolicyOutput'`

``` purescript
newGetDataRetrievalPolicyOutput' :: ({ "Policy" :: Maybe (DataRetrievalPolicy) } -> { "Policy" :: Maybe (DataRetrievalPolicy) }) -> GetDataRetrievalPolicyOutput
```

Constructs GetDataRetrievalPolicyOutput's fields from required parameters

#### `GetJobOutputInput`

``` purescript
newtype GetJobOutputInput
  = GetJobOutputInput { accountId :: String, vaultName :: String, jobId :: String, range :: Maybe (String) }
```

<p>Provides options for downloading output of an Amazon Glacier job.</p>

##### Instances
``` purescript
Newtype GetJobOutputInput _
Generic GetJobOutputInput _
Show GetJobOutputInput
Decode GetJobOutputInput
Encode GetJobOutputInput
```

#### `newGetJobOutputInput`

``` purescript
newGetJobOutputInput :: String -> String -> String -> GetJobOutputInput
```

Constructs GetJobOutputInput from required parameters

#### `newGetJobOutputInput'`

``` purescript
newGetJobOutputInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, jobId :: String, range :: Maybe (String) } -> { accountId :: String, vaultName :: String, jobId :: String, range :: Maybe (String) }) -> GetJobOutputInput
```

Constructs GetJobOutputInput's fields from required parameters

#### `GetJobOutputOutput`

``` purescript
newtype GetJobOutputOutput
  = GetJobOutputOutput { body :: Maybe (Stream), checksum :: Maybe (String), status :: Maybe (Httpstatus'), contentRange :: Maybe (String), acceptRanges :: Maybe (String), contentType :: Maybe (String), archiveDescription :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype GetJobOutputOutput _
Generic GetJobOutputOutput _
Show GetJobOutputOutput
Decode GetJobOutputOutput
Encode GetJobOutputOutput
```

#### `newGetJobOutputOutput`

``` purescript
newGetJobOutputOutput :: GetJobOutputOutput
```

Constructs GetJobOutputOutput from required parameters

#### `newGetJobOutputOutput'`

``` purescript
newGetJobOutputOutput' :: ({ body :: Maybe (Stream), checksum :: Maybe (String), status :: Maybe (Httpstatus'), contentRange :: Maybe (String), acceptRanges :: Maybe (String), contentType :: Maybe (String), archiveDescription :: Maybe (String) } -> { body :: Maybe (Stream), checksum :: Maybe (String), status :: Maybe (Httpstatus'), contentRange :: Maybe (String), acceptRanges :: Maybe (String), contentType :: Maybe (String), archiveDescription :: Maybe (String) }) -> GetJobOutputOutput
```

Constructs GetJobOutputOutput's fields from required parameters

#### `GetVaultAccessPolicyInput`

``` purescript
newtype GetVaultAccessPolicyInput
  = GetVaultAccessPolicyInput { accountId :: String, vaultName :: String }
```

<p>Input for GetVaultAccessPolicy.</p>

##### Instances
``` purescript
Newtype GetVaultAccessPolicyInput _
Generic GetVaultAccessPolicyInput _
Show GetVaultAccessPolicyInput
Decode GetVaultAccessPolicyInput
Encode GetVaultAccessPolicyInput
```

#### `newGetVaultAccessPolicyInput`

``` purescript
newGetVaultAccessPolicyInput :: String -> String -> GetVaultAccessPolicyInput
```

Constructs GetVaultAccessPolicyInput from required parameters

#### `newGetVaultAccessPolicyInput'`

``` purescript
newGetVaultAccessPolicyInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> GetVaultAccessPolicyInput
```

Constructs GetVaultAccessPolicyInput's fields from required parameters

#### `GetVaultAccessPolicyOutput`

``` purescript
newtype GetVaultAccessPolicyOutput
  = GetVaultAccessPolicyOutput { policy :: Maybe (VaultAccessPolicy) }
```

<p>Output for GetVaultAccessPolicy.</p>

##### Instances
``` purescript
Newtype GetVaultAccessPolicyOutput _
Generic GetVaultAccessPolicyOutput _
Show GetVaultAccessPolicyOutput
Decode GetVaultAccessPolicyOutput
Encode GetVaultAccessPolicyOutput
```

#### `newGetVaultAccessPolicyOutput`

``` purescript
newGetVaultAccessPolicyOutput :: GetVaultAccessPolicyOutput
```

Constructs GetVaultAccessPolicyOutput from required parameters

#### `newGetVaultAccessPolicyOutput'`

``` purescript
newGetVaultAccessPolicyOutput' :: ({ policy :: Maybe (VaultAccessPolicy) } -> { policy :: Maybe (VaultAccessPolicy) }) -> GetVaultAccessPolicyOutput
```

Constructs GetVaultAccessPolicyOutput's fields from required parameters

#### `GetVaultLockInput`

``` purescript
newtype GetVaultLockInput
  = GetVaultLockInput { accountId :: String, vaultName :: String }
```

<p>The input values for <code>GetVaultLock</code>.</p>

##### Instances
``` purescript
Newtype GetVaultLockInput _
Generic GetVaultLockInput _
Show GetVaultLockInput
Decode GetVaultLockInput
Encode GetVaultLockInput
```

#### `newGetVaultLockInput`

``` purescript
newGetVaultLockInput :: String -> String -> GetVaultLockInput
```

Constructs GetVaultLockInput from required parameters

#### `newGetVaultLockInput'`

``` purescript
newGetVaultLockInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> GetVaultLockInput
```

Constructs GetVaultLockInput's fields from required parameters

#### `GetVaultLockOutput`

``` purescript
newtype GetVaultLockOutput
  = GetVaultLockOutput { "Policy" :: Maybe (String), "State" :: Maybe (String), "ExpirationDate" :: Maybe (String), "CreationDate" :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype GetVaultLockOutput _
Generic GetVaultLockOutput _
Show GetVaultLockOutput
Decode GetVaultLockOutput
Encode GetVaultLockOutput
```

#### `newGetVaultLockOutput`

``` purescript
newGetVaultLockOutput :: GetVaultLockOutput
```

Constructs GetVaultLockOutput from required parameters

#### `newGetVaultLockOutput'`

``` purescript
newGetVaultLockOutput' :: ({ "Policy" :: Maybe (String), "State" :: Maybe (String), "ExpirationDate" :: Maybe (String), "CreationDate" :: Maybe (String) } -> { "Policy" :: Maybe (String), "State" :: Maybe (String), "ExpirationDate" :: Maybe (String), "CreationDate" :: Maybe (String) }) -> GetVaultLockOutput
```

Constructs GetVaultLockOutput's fields from required parameters

#### `GetVaultNotificationsInput`

``` purescript
newtype GetVaultNotificationsInput
  = GetVaultNotificationsInput { accountId :: String, vaultName :: String }
```

<p>Provides options for retrieving the notification configuration set on an Amazon Glacier vault.</p>

##### Instances
``` purescript
Newtype GetVaultNotificationsInput _
Generic GetVaultNotificationsInput _
Show GetVaultNotificationsInput
Decode GetVaultNotificationsInput
Encode GetVaultNotificationsInput
```

#### `newGetVaultNotificationsInput`

``` purescript
newGetVaultNotificationsInput :: String -> String -> GetVaultNotificationsInput
```

Constructs GetVaultNotificationsInput from required parameters

#### `newGetVaultNotificationsInput'`

``` purescript
newGetVaultNotificationsInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> GetVaultNotificationsInput
```

Constructs GetVaultNotificationsInput's fields from required parameters

#### `GetVaultNotificationsOutput`

``` purescript
newtype GetVaultNotificationsOutput
  = GetVaultNotificationsOutput { vaultNotificationConfig :: Maybe (VaultNotificationConfig) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype GetVaultNotificationsOutput _
Generic GetVaultNotificationsOutput _
Show GetVaultNotificationsOutput
Decode GetVaultNotificationsOutput
Encode GetVaultNotificationsOutput
```

#### `newGetVaultNotificationsOutput`

``` purescript
newGetVaultNotificationsOutput :: GetVaultNotificationsOutput
```

Constructs GetVaultNotificationsOutput from required parameters

#### `newGetVaultNotificationsOutput'`

``` purescript
newGetVaultNotificationsOutput' :: ({ vaultNotificationConfig :: Maybe (VaultNotificationConfig) } -> { vaultNotificationConfig :: Maybe (VaultNotificationConfig) }) -> GetVaultNotificationsOutput
```

Constructs GetVaultNotificationsOutput's fields from required parameters

#### `GlacierJobDescription`

``` purescript
newtype GlacierJobDescription
  = GlacierJobDescription { "JobId" :: Maybe (String), "JobDescription" :: Maybe (String), "Action" :: Maybe (ActionCode), "ArchiveId" :: Maybe (String), "VaultARN" :: Maybe (String), "CreationDate" :: Maybe (String), "Completed" :: Maybe (Boolean), "StatusCode" :: Maybe (StatusCode), "StatusMessage" :: Maybe (String), "ArchiveSizeInBytes" :: Maybe (Size), "InventorySizeInBytes" :: Maybe (Size), "SNSTopic" :: Maybe (String), "CompletionDate" :: Maybe (String), "SHA256TreeHash" :: Maybe (String), "ArchiveSHA256TreeHash" :: Maybe (String), "RetrievalByteRange" :: Maybe (String), "Tier" :: Maybe (String), "InventoryRetrievalParameters" :: Maybe (InventoryRetrievalJobDescription), "JobOutputPath" :: Maybe (String), "SelectParameters" :: Maybe (SelectParameters), "OutputLocation" :: Maybe (OutputLocation) }
```

<p>Contains the description of an Amazon Glacier job.</p>

##### Instances
``` purescript
Newtype GlacierJobDescription _
Generic GlacierJobDescription _
Show GlacierJobDescription
Decode GlacierJobDescription
Encode GlacierJobDescription
```

#### `newGlacierJobDescription`

``` purescript
newGlacierJobDescription :: GlacierJobDescription
```

Constructs GlacierJobDescription from required parameters

#### `newGlacierJobDescription'`

``` purescript
newGlacierJobDescription' :: ({ "JobId" :: Maybe (String), "JobDescription" :: Maybe (String), "Action" :: Maybe (ActionCode), "ArchiveId" :: Maybe (String), "VaultARN" :: Maybe (String), "CreationDate" :: Maybe (String), "Completed" :: Maybe (Boolean), "StatusCode" :: Maybe (StatusCode), "StatusMessage" :: Maybe (String), "ArchiveSizeInBytes" :: Maybe (Size), "InventorySizeInBytes" :: Maybe (Size), "SNSTopic" :: Maybe (String), "CompletionDate" :: Maybe (String), "SHA256TreeHash" :: Maybe (String), "ArchiveSHA256TreeHash" :: Maybe (String), "RetrievalByteRange" :: Maybe (String), "Tier" :: Maybe (String), "InventoryRetrievalParameters" :: Maybe (InventoryRetrievalJobDescription), "JobOutputPath" :: Maybe (String), "SelectParameters" :: Maybe (SelectParameters), "OutputLocation" :: Maybe (OutputLocation) } -> { "JobId" :: Maybe (String), "JobDescription" :: Maybe (String), "Action" :: Maybe (ActionCode), "ArchiveId" :: Maybe (String), "VaultARN" :: Maybe (String), "CreationDate" :: Maybe (String), "Completed" :: Maybe (Boolean), "StatusCode" :: Maybe (StatusCode), "StatusMessage" :: Maybe (String), "ArchiveSizeInBytes" :: Maybe (Size), "InventorySizeInBytes" :: Maybe (Size), "SNSTopic" :: Maybe (String), "CompletionDate" :: Maybe (String), "SHA256TreeHash" :: Maybe (String), "ArchiveSHA256TreeHash" :: Maybe (String), "RetrievalByteRange" :: Maybe (String), "Tier" :: Maybe (String), "InventoryRetrievalParameters" :: Maybe (InventoryRetrievalJobDescription), "JobOutputPath" :: Maybe (String), "SelectParameters" :: Maybe (SelectParameters), "OutputLocation" :: Maybe (OutputLocation) }) -> GlacierJobDescription
```

Constructs GlacierJobDescription's fields from required parameters

#### `Grant`

``` purescript
newtype Grant
  = Grant { "Grantee" :: Maybe (Grantee), "Permission" :: Maybe (Permission) }
```

<p>Contains information about a grant.</p>

##### Instances
``` purescript
Newtype Grant _
Generic Grant _
Show Grant
Decode Grant
Encode Grant
```

#### `newGrant`

``` purescript
newGrant :: Grant
```

Constructs Grant from required parameters

#### `newGrant'`

``` purescript
newGrant' :: ({ "Grantee" :: Maybe (Grantee), "Permission" :: Maybe (Permission) } -> { "Grantee" :: Maybe (Grantee), "Permission" :: Maybe (Permission) }) -> Grant
```

Constructs Grant's fields from required parameters

#### `Grantee`

``` purescript
newtype Grantee
  = Grantee { "Type" :: Type, "DisplayName" :: Maybe (String), "URI" :: Maybe (String), "ID" :: Maybe (String), "EmailAddress" :: Maybe (String) }
```

<p>Contains information about the grantee.</p>

##### Instances
``` purescript
Newtype Grantee _
Generic Grantee _
Show Grantee
Decode Grantee
Encode Grantee
```

#### `newGrantee`

``` purescript
newGrantee :: Type -> Grantee
```

Constructs Grantee from required parameters

#### `newGrantee'`

``` purescript
newGrantee' :: Type -> ({ "Type" :: Type, "DisplayName" :: Maybe (String), "URI" :: Maybe (String), "ID" :: Maybe (String), "EmailAddress" :: Maybe (String) } -> { "Type" :: Type, "DisplayName" :: Maybe (String), "URI" :: Maybe (String), "ID" :: Maybe (String), "EmailAddress" :: Maybe (String) }) -> Grantee
```

Constructs Grantee's fields from required parameters

#### `InitiateJobInput`

``` purescript
newtype InitiateJobInput
  = InitiateJobInput { accountId :: String, vaultName :: String, jobParameters :: Maybe (JobParameters) }
```

<p>Provides options for initiating an Amazon Glacier job.</p>

##### Instances
``` purescript
Newtype InitiateJobInput _
Generic InitiateJobInput _
Show InitiateJobInput
Decode InitiateJobInput
Encode InitiateJobInput
```

#### `newInitiateJobInput`

``` purescript
newInitiateJobInput :: String -> String -> InitiateJobInput
```

Constructs InitiateJobInput from required parameters

#### `newInitiateJobInput'`

``` purescript
newInitiateJobInput' :: String -> String -> ({ accountId :: String, vaultName :: String, jobParameters :: Maybe (JobParameters) } -> { accountId :: String, vaultName :: String, jobParameters :: Maybe (JobParameters) }) -> InitiateJobInput
```

Constructs InitiateJobInput's fields from required parameters

#### `InitiateJobOutput`

``` purescript
newtype InitiateJobOutput
  = InitiateJobOutput { location :: Maybe (String), jobId :: Maybe (String), jobOutputPath :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype InitiateJobOutput _
Generic InitiateJobOutput _
Show InitiateJobOutput
Decode InitiateJobOutput
Encode InitiateJobOutput
```

#### `newInitiateJobOutput`

``` purescript
newInitiateJobOutput :: InitiateJobOutput
```

Constructs InitiateJobOutput from required parameters

#### `newInitiateJobOutput'`

``` purescript
newInitiateJobOutput' :: ({ location :: Maybe (String), jobId :: Maybe (String), jobOutputPath :: Maybe (String) } -> { location :: Maybe (String), jobId :: Maybe (String), jobOutputPath :: Maybe (String) }) -> InitiateJobOutput
```

Constructs InitiateJobOutput's fields from required parameters

#### `InitiateMultipartUploadInput`

``` purescript
newtype InitiateMultipartUploadInput
  = InitiateMultipartUploadInput { accountId :: String, vaultName :: String, archiveDescription :: Maybe (String), partSize :: Maybe (String) }
```

<p>Provides options for initiating a multipart upload to an Amazon Glacier vault.</p>

##### Instances
``` purescript
Newtype InitiateMultipartUploadInput _
Generic InitiateMultipartUploadInput _
Show InitiateMultipartUploadInput
Decode InitiateMultipartUploadInput
Encode InitiateMultipartUploadInput
```

#### `newInitiateMultipartUploadInput`

``` purescript
newInitiateMultipartUploadInput :: String -> String -> InitiateMultipartUploadInput
```

Constructs InitiateMultipartUploadInput from required parameters

#### `newInitiateMultipartUploadInput'`

``` purescript
newInitiateMultipartUploadInput' :: String -> String -> ({ accountId :: String, vaultName :: String, archiveDescription :: Maybe (String), partSize :: Maybe (String) } -> { accountId :: String, vaultName :: String, archiveDescription :: Maybe (String), partSize :: Maybe (String) }) -> InitiateMultipartUploadInput
```

Constructs InitiateMultipartUploadInput's fields from required parameters

#### `InitiateMultipartUploadOutput`

``` purescript
newtype InitiateMultipartUploadOutput
  = InitiateMultipartUploadOutput { location :: Maybe (String), uploadId :: Maybe (String) }
```

<p>The Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype InitiateMultipartUploadOutput _
Generic InitiateMultipartUploadOutput _
Show InitiateMultipartUploadOutput
Decode InitiateMultipartUploadOutput
Encode InitiateMultipartUploadOutput
```

#### `newInitiateMultipartUploadOutput`

``` purescript
newInitiateMultipartUploadOutput :: InitiateMultipartUploadOutput
```

Constructs InitiateMultipartUploadOutput from required parameters

#### `newInitiateMultipartUploadOutput'`

``` purescript
newInitiateMultipartUploadOutput' :: ({ location :: Maybe (String), uploadId :: Maybe (String) } -> { location :: Maybe (String), uploadId :: Maybe (String) }) -> InitiateMultipartUploadOutput
```

Constructs InitiateMultipartUploadOutput's fields from required parameters

#### `InitiateVaultLockInput`

``` purescript
newtype InitiateVaultLockInput
  = InitiateVaultLockInput { accountId :: String, vaultName :: String, policy :: Maybe (VaultLockPolicy) }
```

<p>The input values for <code>InitiateVaultLock</code>.</p>

##### Instances
``` purescript
Newtype InitiateVaultLockInput _
Generic InitiateVaultLockInput _
Show InitiateVaultLockInput
Decode InitiateVaultLockInput
Encode InitiateVaultLockInput
```

#### `newInitiateVaultLockInput`

``` purescript
newInitiateVaultLockInput :: String -> String -> InitiateVaultLockInput
```

Constructs InitiateVaultLockInput from required parameters

#### `newInitiateVaultLockInput'`

``` purescript
newInitiateVaultLockInput' :: String -> String -> ({ accountId :: String, vaultName :: String, policy :: Maybe (VaultLockPolicy) } -> { accountId :: String, vaultName :: String, policy :: Maybe (VaultLockPolicy) }) -> InitiateVaultLockInput
```

Constructs InitiateVaultLockInput's fields from required parameters

#### `InitiateVaultLockOutput`

``` purescript
newtype InitiateVaultLockOutput
  = InitiateVaultLockOutput { lockId :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype InitiateVaultLockOutput _
Generic InitiateVaultLockOutput _
Show InitiateVaultLockOutput
Decode InitiateVaultLockOutput
Encode InitiateVaultLockOutput
```

#### `newInitiateVaultLockOutput`

``` purescript
newInitiateVaultLockOutput :: InitiateVaultLockOutput
```

Constructs InitiateVaultLockOutput from required parameters

#### `newInitiateVaultLockOutput'`

``` purescript
newInitiateVaultLockOutput' :: ({ lockId :: Maybe (String) } -> { lockId :: Maybe (String) }) -> InitiateVaultLockOutput
```

Constructs InitiateVaultLockOutput's fields from required parameters

#### `InputSerialization`

``` purescript
newtype InputSerialization
  = InputSerialization { csv :: Maybe (CSVInput) }
```

<p>Describes how the archive is serialized.</p>

##### Instances
``` purescript
Newtype InputSerialization _
Generic InputSerialization _
Show InputSerialization
Decode InputSerialization
Encode InputSerialization
```

#### `newInputSerialization`

``` purescript
newInputSerialization :: InputSerialization
```

Constructs InputSerialization from required parameters

#### `newInputSerialization'`

``` purescript
newInputSerialization' :: ({ csv :: Maybe (CSVInput) } -> { csv :: Maybe (CSVInput) }) -> InputSerialization
```

Constructs InputSerialization's fields from required parameters

#### `InsufficientCapacityException`

``` purescript
newtype InsufficientCapacityException
  = InsufficientCapacityException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>

##### Instances
``` purescript
Newtype InsufficientCapacityException _
Generic InsufficientCapacityException _
Show InsufficientCapacityException
Decode InsufficientCapacityException
Encode InsufficientCapacityException
```

#### `newInsufficientCapacityException`

``` purescript
newInsufficientCapacityException :: InsufficientCapacityException
```

Constructs InsufficientCapacityException from required parameters

#### `newInsufficientCapacityException'`

``` purescript
newInsufficientCapacityException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> InsufficientCapacityException
```

Constructs InsufficientCapacityException's fields from required parameters

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if a parameter of the request is incorrectly specified.</p>

##### Instances
``` purescript
Newtype InvalidParameterValueException _
Generic InvalidParameterValueException _
Show InvalidParameterValueException
Decode InvalidParameterValueException
Encode InvalidParameterValueException
```

#### `newInvalidParameterValueException`

``` purescript
newInvalidParameterValueException :: InvalidParameterValueException
```

Constructs InvalidParameterValueException from required parameters

#### `newInvalidParameterValueException'`

``` purescript
newInvalidParameterValueException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> InvalidParameterValueException
```

Constructs InvalidParameterValueException's fields from required parameters

#### `InventoryRetrievalJobDescription`

``` purescript
newtype InventoryRetrievalJobDescription
  = InventoryRetrievalJobDescription { "Format" :: Maybe (String), "StartDate" :: Maybe (DateTime), "EndDate" :: Maybe (DateTime), "Limit" :: Maybe (String), "Marker" :: Maybe (String) }
```

<p>Describes the options for a range inventory retrieval job.</p>

##### Instances
``` purescript
Newtype InventoryRetrievalJobDescription _
Generic InventoryRetrievalJobDescription _
Show InventoryRetrievalJobDescription
Decode InventoryRetrievalJobDescription
Encode InventoryRetrievalJobDescription
```

#### `newInventoryRetrievalJobDescription`

``` purescript
newInventoryRetrievalJobDescription :: InventoryRetrievalJobDescription
```

Constructs InventoryRetrievalJobDescription from required parameters

#### `newInventoryRetrievalJobDescription'`

``` purescript
newInventoryRetrievalJobDescription' :: ({ "Format" :: Maybe (String), "StartDate" :: Maybe (DateTime), "EndDate" :: Maybe (DateTime), "Limit" :: Maybe (String), "Marker" :: Maybe (String) } -> { "Format" :: Maybe (String), "StartDate" :: Maybe (DateTime), "EndDate" :: Maybe (DateTime), "Limit" :: Maybe (String), "Marker" :: Maybe (String) }) -> InventoryRetrievalJobDescription
```

Constructs InventoryRetrievalJobDescription's fields from required parameters

#### `InventoryRetrievalJobInput`

``` purescript
newtype InventoryRetrievalJobInput
  = InventoryRetrievalJobInput { "StartDate" :: Maybe (String), "EndDate" :: Maybe (String), "Limit" :: Maybe (String), "Marker" :: Maybe (String) }
```

<p>Provides options for specifying a range inventory retrieval job.</p>

##### Instances
``` purescript
Newtype InventoryRetrievalJobInput _
Generic InventoryRetrievalJobInput _
Show InventoryRetrievalJobInput
Decode InventoryRetrievalJobInput
Encode InventoryRetrievalJobInput
```

#### `newInventoryRetrievalJobInput`

``` purescript
newInventoryRetrievalJobInput :: InventoryRetrievalJobInput
```

Constructs InventoryRetrievalJobInput from required parameters

#### `newInventoryRetrievalJobInput'`

``` purescript
newInventoryRetrievalJobInput' :: ({ "StartDate" :: Maybe (String), "EndDate" :: Maybe (String), "Limit" :: Maybe (String), "Marker" :: Maybe (String) } -> { "StartDate" :: Maybe (String), "EndDate" :: Maybe (String), "Limit" :: Maybe (String), "Marker" :: Maybe (String) }) -> InventoryRetrievalJobInput
```

Constructs InventoryRetrievalJobInput's fields from required parameters

#### `JobList`

``` purescript
newtype JobList
  = JobList (Array GlacierJobDescription)
```

##### Instances
``` purescript
Newtype JobList _
Generic JobList _
Show JobList
Decode JobList
Encode JobList
```

#### `JobParameters`

``` purescript
newtype JobParameters
  = JobParameters { "Format" :: Maybe (String), "Type" :: Maybe (String), "ArchiveId" :: Maybe (String), "Description" :: Maybe (String), "SNSTopic" :: Maybe (String), "RetrievalByteRange" :: Maybe (String), "Tier" :: Maybe (String), "InventoryRetrievalParameters" :: Maybe (InventoryRetrievalJobInput), "SelectParameters" :: Maybe (SelectParameters), "OutputLocation" :: Maybe (OutputLocation) }
```

<p>Provides options for defining a job.</p>

##### Instances
``` purescript
Newtype JobParameters _
Generic JobParameters _
Show JobParameters
Decode JobParameters
Encode JobParameters
```

#### `newJobParameters`

``` purescript
newJobParameters :: JobParameters
```

Constructs JobParameters from required parameters

#### `newJobParameters'`

``` purescript
newJobParameters' :: ({ "Format" :: Maybe (String), "Type" :: Maybe (String), "ArchiveId" :: Maybe (String), "Description" :: Maybe (String), "SNSTopic" :: Maybe (String), "RetrievalByteRange" :: Maybe (String), "Tier" :: Maybe (String), "InventoryRetrievalParameters" :: Maybe (InventoryRetrievalJobInput), "SelectParameters" :: Maybe (SelectParameters), "OutputLocation" :: Maybe (OutputLocation) } -> { "Format" :: Maybe (String), "Type" :: Maybe (String), "ArchiveId" :: Maybe (String), "Description" :: Maybe (String), "SNSTopic" :: Maybe (String), "RetrievalByteRange" :: Maybe (String), "Tier" :: Maybe (String), "InventoryRetrievalParameters" :: Maybe (InventoryRetrievalJobInput), "SelectParameters" :: Maybe (SelectParameters), "OutputLocation" :: Maybe (OutputLocation) }) -> JobParameters
```

Constructs JobParameters's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if the request results in a vault or account limit being exceeded.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListJobsInput`

``` purescript
newtype ListJobsInput
  = ListJobsInput { accountId :: String, vaultName :: String, limit :: Maybe (String), marker :: Maybe (String), statuscode :: Maybe (String), completed :: Maybe (String) }
```

<p>Provides options for retrieving a job list for an Amazon Glacier vault.</p>

##### Instances
``` purescript
Newtype ListJobsInput _
Generic ListJobsInput _
Show ListJobsInput
Decode ListJobsInput
Encode ListJobsInput
```

#### `newListJobsInput`

``` purescript
newListJobsInput :: String -> String -> ListJobsInput
```

Constructs ListJobsInput from required parameters

#### `newListJobsInput'`

``` purescript
newListJobsInput' :: String -> String -> ({ accountId :: String, vaultName :: String, limit :: Maybe (String), marker :: Maybe (String), statuscode :: Maybe (String), completed :: Maybe (String) } -> { accountId :: String, vaultName :: String, limit :: Maybe (String), marker :: Maybe (String), statuscode :: Maybe (String), completed :: Maybe (String) }) -> ListJobsInput
```

Constructs ListJobsInput's fields from required parameters

#### `ListJobsOutput`

``` purescript
newtype ListJobsOutput
  = ListJobsOutput { "JobList" :: Maybe (JobList), "Marker" :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype ListJobsOutput _
Generic ListJobsOutput _
Show ListJobsOutput
Decode ListJobsOutput
Encode ListJobsOutput
```

#### `newListJobsOutput`

``` purescript
newListJobsOutput :: ListJobsOutput
```

Constructs ListJobsOutput from required parameters

#### `newListJobsOutput'`

``` purescript
newListJobsOutput' :: ({ "JobList" :: Maybe (JobList), "Marker" :: Maybe (String) } -> { "JobList" :: Maybe (JobList), "Marker" :: Maybe (String) }) -> ListJobsOutput
```

Constructs ListJobsOutput's fields from required parameters

#### `ListMultipartUploadsInput`

``` purescript
newtype ListMultipartUploadsInput
  = ListMultipartUploadsInput { accountId :: String, vaultName :: String, marker :: Maybe (String), limit :: Maybe (String) }
```

<p>Provides options for retrieving list of in-progress multipart uploads for an Amazon Glacier vault.</p>

##### Instances
``` purescript
Newtype ListMultipartUploadsInput _
Generic ListMultipartUploadsInput _
Show ListMultipartUploadsInput
Decode ListMultipartUploadsInput
Encode ListMultipartUploadsInput
```

#### `newListMultipartUploadsInput`

``` purescript
newListMultipartUploadsInput :: String -> String -> ListMultipartUploadsInput
```

Constructs ListMultipartUploadsInput from required parameters

#### `newListMultipartUploadsInput'`

``` purescript
newListMultipartUploadsInput' :: String -> String -> ({ accountId :: String, vaultName :: String, marker :: Maybe (String), limit :: Maybe (String) } -> { accountId :: String, vaultName :: String, marker :: Maybe (String), limit :: Maybe (String) }) -> ListMultipartUploadsInput
```

Constructs ListMultipartUploadsInput's fields from required parameters

#### `ListMultipartUploadsOutput`

``` purescript
newtype ListMultipartUploadsOutput
  = ListMultipartUploadsOutput { "UploadsList" :: Maybe (UploadsList), "Marker" :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype ListMultipartUploadsOutput _
Generic ListMultipartUploadsOutput _
Show ListMultipartUploadsOutput
Decode ListMultipartUploadsOutput
Encode ListMultipartUploadsOutput
```

#### `newListMultipartUploadsOutput`

``` purescript
newListMultipartUploadsOutput :: ListMultipartUploadsOutput
```

Constructs ListMultipartUploadsOutput from required parameters

#### `newListMultipartUploadsOutput'`

``` purescript
newListMultipartUploadsOutput' :: ({ "UploadsList" :: Maybe (UploadsList), "Marker" :: Maybe (String) } -> { "UploadsList" :: Maybe (UploadsList), "Marker" :: Maybe (String) }) -> ListMultipartUploadsOutput
```

Constructs ListMultipartUploadsOutput's fields from required parameters

#### `ListPartsInput`

``` purescript
newtype ListPartsInput
  = ListPartsInput { accountId :: String, vaultName :: String, uploadId :: String, marker :: Maybe (String), limit :: Maybe (String) }
```

<p>Provides options for retrieving a list of parts of an archive that have been uploaded in a specific multipart upload.</p>

##### Instances
``` purescript
Newtype ListPartsInput _
Generic ListPartsInput _
Show ListPartsInput
Decode ListPartsInput
Encode ListPartsInput
```

#### `newListPartsInput`

``` purescript
newListPartsInput :: String -> String -> String -> ListPartsInput
```

Constructs ListPartsInput from required parameters

#### `newListPartsInput'`

``` purescript
newListPartsInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, uploadId :: String, marker :: Maybe (String), limit :: Maybe (String) } -> { accountId :: String, vaultName :: String, uploadId :: String, marker :: Maybe (String), limit :: Maybe (String) }) -> ListPartsInput
```

Constructs ListPartsInput's fields from required parameters

#### `ListPartsOutput`

``` purescript
newtype ListPartsOutput
  = ListPartsOutput { "MultipartUploadId" :: Maybe (String), "VaultARN" :: Maybe (String), "ArchiveDescription" :: Maybe (String), "PartSizeInBytes" :: Maybe (Number), "CreationDate" :: Maybe (String), "Parts" :: Maybe (PartList), "Marker" :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype ListPartsOutput _
Generic ListPartsOutput _
Show ListPartsOutput
Decode ListPartsOutput
Encode ListPartsOutput
```

#### `newListPartsOutput`

``` purescript
newListPartsOutput :: ListPartsOutput
```

Constructs ListPartsOutput from required parameters

#### `newListPartsOutput'`

``` purescript
newListPartsOutput' :: ({ "MultipartUploadId" :: Maybe (String), "VaultARN" :: Maybe (String), "ArchiveDescription" :: Maybe (String), "PartSizeInBytes" :: Maybe (Number), "CreationDate" :: Maybe (String), "Parts" :: Maybe (PartList), "Marker" :: Maybe (String) } -> { "MultipartUploadId" :: Maybe (String), "VaultARN" :: Maybe (String), "ArchiveDescription" :: Maybe (String), "PartSizeInBytes" :: Maybe (Number), "CreationDate" :: Maybe (String), "Parts" :: Maybe (PartList), "Marker" :: Maybe (String) }) -> ListPartsOutput
```

Constructs ListPartsOutput's fields from required parameters

#### `ListProvisionedCapacityInput`

``` purescript
newtype ListProvisionedCapacityInput
  = ListProvisionedCapacityInput { accountId :: String }
```

##### Instances
``` purescript
Newtype ListProvisionedCapacityInput _
Generic ListProvisionedCapacityInput _
Show ListProvisionedCapacityInput
Decode ListProvisionedCapacityInput
Encode ListProvisionedCapacityInput
```

#### `newListProvisionedCapacityInput`

``` purescript
newListProvisionedCapacityInput :: String -> ListProvisionedCapacityInput
```

Constructs ListProvisionedCapacityInput from required parameters

#### `newListProvisionedCapacityInput'`

``` purescript
newListProvisionedCapacityInput' :: String -> ({ accountId :: String } -> { accountId :: String }) -> ListProvisionedCapacityInput
```

Constructs ListProvisionedCapacityInput's fields from required parameters

#### `ListProvisionedCapacityOutput`

``` purescript
newtype ListProvisionedCapacityOutput
  = ListProvisionedCapacityOutput { "ProvisionedCapacityList" :: Maybe (ProvisionedCapacityList) }
```

##### Instances
``` purescript
Newtype ListProvisionedCapacityOutput _
Generic ListProvisionedCapacityOutput _
Show ListProvisionedCapacityOutput
Decode ListProvisionedCapacityOutput
Encode ListProvisionedCapacityOutput
```

#### `newListProvisionedCapacityOutput`

``` purescript
newListProvisionedCapacityOutput :: ListProvisionedCapacityOutput
```

Constructs ListProvisionedCapacityOutput from required parameters

#### `newListProvisionedCapacityOutput'`

``` purescript
newListProvisionedCapacityOutput' :: ({ "ProvisionedCapacityList" :: Maybe (ProvisionedCapacityList) } -> { "ProvisionedCapacityList" :: Maybe (ProvisionedCapacityList) }) -> ListProvisionedCapacityOutput
```

Constructs ListProvisionedCapacityOutput's fields from required parameters

#### `ListTagsForVaultInput`

``` purescript
newtype ListTagsForVaultInput
  = ListTagsForVaultInput { accountId :: String, vaultName :: String }
```

<p>The input value for <code>ListTagsForVaultInput</code>.</p>

##### Instances
``` purescript
Newtype ListTagsForVaultInput _
Generic ListTagsForVaultInput _
Show ListTagsForVaultInput
Decode ListTagsForVaultInput
Encode ListTagsForVaultInput
```

#### `newListTagsForVaultInput`

``` purescript
newListTagsForVaultInput :: String -> String -> ListTagsForVaultInput
```

Constructs ListTagsForVaultInput from required parameters

#### `newListTagsForVaultInput'`

``` purescript
newListTagsForVaultInput' :: String -> String -> ({ accountId :: String, vaultName :: String } -> { accountId :: String, vaultName :: String }) -> ListTagsForVaultInput
```

Constructs ListTagsForVaultInput's fields from required parameters

#### `ListTagsForVaultOutput`

``` purescript
newtype ListTagsForVaultOutput
  = ListTagsForVaultOutput { "Tags" :: Maybe (TagMap) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype ListTagsForVaultOutput _
Generic ListTagsForVaultOutput _
Show ListTagsForVaultOutput
Decode ListTagsForVaultOutput
Encode ListTagsForVaultOutput
```

#### `newListTagsForVaultOutput`

``` purescript
newListTagsForVaultOutput :: ListTagsForVaultOutput
```

Constructs ListTagsForVaultOutput from required parameters

#### `newListTagsForVaultOutput'`

``` purescript
newListTagsForVaultOutput' :: ({ "Tags" :: Maybe (TagMap) } -> { "Tags" :: Maybe (TagMap) }) -> ListTagsForVaultOutput
```

Constructs ListTagsForVaultOutput's fields from required parameters

#### `ListVaultsInput`

``` purescript
newtype ListVaultsInput
  = ListVaultsInput { accountId :: String, marker :: Maybe (String), limit :: Maybe (String) }
```

<p>Provides options to retrieve the vault list owned by the calling user's account. The list provides metadata information for each vault.</p>

##### Instances
``` purescript
Newtype ListVaultsInput _
Generic ListVaultsInput _
Show ListVaultsInput
Decode ListVaultsInput
Encode ListVaultsInput
```

#### `newListVaultsInput`

``` purescript
newListVaultsInput :: String -> ListVaultsInput
```

Constructs ListVaultsInput from required parameters

#### `newListVaultsInput'`

``` purescript
newListVaultsInput' :: String -> ({ accountId :: String, marker :: Maybe (String), limit :: Maybe (String) } -> { accountId :: String, marker :: Maybe (String), limit :: Maybe (String) }) -> ListVaultsInput
```

Constructs ListVaultsInput's fields from required parameters

#### `ListVaultsOutput`

``` purescript
newtype ListVaultsOutput
  = ListVaultsOutput { "VaultList" :: Maybe (VaultList), "Marker" :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype ListVaultsOutput _
Generic ListVaultsOutput _
Show ListVaultsOutput
Decode ListVaultsOutput
Encode ListVaultsOutput
```

#### `newListVaultsOutput`

``` purescript
newListVaultsOutput :: ListVaultsOutput
```

Constructs ListVaultsOutput from required parameters

#### `newListVaultsOutput'`

``` purescript
newListVaultsOutput' :: ({ "VaultList" :: Maybe (VaultList), "Marker" :: Maybe (String) } -> { "VaultList" :: Maybe (VaultList), "Marker" :: Maybe (String) }) -> ListVaultsOutput
```

Constructs ListVaultsOutput's fields from required parameters

#### `MissingParameterValueException`

``` purescript
newtype MissingParameterValueException
  = MissingParameterValueException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if a required header or parameter is missing from the request.</p>

##### Instances
``` purescript
Newtype MissingParameterValueException _
Generic MissingParameterValueException _
Show MissingParameterValueException
Decode MissingParameterValueException
Encode MissingParameterValueException
```

#### `newMissingParameterValueException`

``` purescript
newMissingParameterValueException :: MissingParameterValueException
```

Constructs MissingParameterValueException from required parameters

#### `newMissingParameterValueException'`

``` purescript
newMissingParameterValueException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> MissingParameterValueException
```

Constructs MissingParameterValueException's fields from required parameters

#### `NotificationEventList`

``` purescript
newtype NotificationEventList
  = NotificationEventList (Array String)
```

##### Instances
``` purescript
Newtype NotificationEventList _
Generic NotificationEventList _
Show NotificationEventList
Decode NotificationEventList
Encode NotificationEventList
```

#### `NullableLong`

``` purescript
newtype NullableLong
  = NullableLong Number
```

##### Instances
``` purescript
Newtype NullableLong _
Generic NullableLong _
Show NullableLong
Decode NullableLong
Encode NullableLong
```

#### `OutputLocation`

``` purescript
newtype OutputLocation
  = OutputLocation { "S3" :: Maybe (S3Location) }
```

<p>Contains information about the location where the select job results are stored.</p>

##### Instances
``` purescript
Newtype OutputLocation _
Generic OutputLocation _
Show OutputLocation
Decode OutputLocation
Encode OutputLocation
```

#### `newOutputLocation`

``` purescript
newOutputLocation :: OutputLocation
```

Constructs OutputLocation from required parameters

#### `newOutputLocation'`

``` purescript
newOutputLocation' :: ({ "S3" :: Maybe (S3Location) } -> { "S3" :: Maybe (S3Location) }) -> OutputLocation
```

Constructs OutputLocation's fields from required parameters

#### `OutputSerialization`

``` purescript
newtype OutputSerialization
  = OutputSerialization { csv :: Maybe (CSVOutput) }
```

<p>Describes how the select output is serialized.</p>

##### Instances
``` purescript
Newtype OutputSerialization _
Generic OutputSerialization _
Show OutputSerialization
Decode OutputSerialization
Encode OutputSerialization
```

#### `newOutputSerialization`

``` purescript
newOutputSerialization :: OutputSerialization
```

Constructs OutputSerialization from required parameters

#### `newOutputSerialization'`

``` purescript
newOutputSerialization' :: ({ csv :: Maybe (CSVOutput) } -> { csv :: Maybe (CSVOutput) }) -> OutputSerialization
```

Constructs OutputSerialization's fields from required parameters

#### `PartList`

``` purescript
newtype PartList
  = PartList (Array PartListElement)
```

##### Instances
``` purescript
Newtype PartList _
Generic PartList _
Show PartList
Decode PartList
Encode PartList
```

#### `PartListElement`

``` purescript
newtype PartListElement
  = PartListElement { "RangeInBytes" :: Maybe (String), "SHA256TreeHash" :: Maybe (String) }
```

<p>A list of the part sizes of the multipart upload.</p>

##### Instances
``` purescript
Newtype PartListElement _
Generic PartListElement _
Show PartListElement
Decode PartListElement
Encode PartListElement
```

#### `newPartListElement`

``` purescript
newPartListElement :: PartListElement
```

Constructs PartListElement from required parameters

#### `newPartListElement'`

``` purescript
newPartListElement' :: ({ "RangeInBytes" :: Maybe (String), "SHA256TreeHash" :: Maybe (String) } -> { "RangeInBytes" :: Maybe (String), "SHA256TreeHash" :: Maybe (String) }) -> PartListElement
```

Constructs PartListElement's fields from required parameters

#### `Permission`

``` purescript
newtype Permission
  = Permission String
```

##### Instances
``` purescript
Newtype Permission _
Generic Permission _
Show Permission
Decode Permission
Encode Permission
```

#### `PolicyEnforcedException`

``` purescript
newtype PolicyEnforcedException
  = PolicyEnforcedException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if a retrieval job would exceed the current data policy's retrieval rate limit. For more information about data retrieval policies,</p>

##### Instances
``` purescript
Newtype PolicyEnforcedException _
Generic PolicyEnforcedException _
Show PolicyEnforcedException
Decode PolicyEnforcedException
Encode PolicyEnforcedException
```

#### `newPolicyEnforcedException`

``` purescript
newPolicyEnforcedException :: PolicyEnforcedException
```

Constructs PolicyEnforcedException from required parameters

#### `newPolicyEnforcedException'`

``` purescript
newPolicyEnforcedException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> PolicyEnforcedException
```

Constructs PolicyEnforcedException's fields from required parameters

#### `ProvisionedCapacityDescription`

``` purescript
newtype ProvisionedCapacityDescription
  = ProvisionedCapacityDescription { "CapacityId" :: Maybe (String), "StartDate" :: Maybe (String), "ExpirationDate" :: Maybe (String) }
```

<p>The definition for a provisioned capacity unit.</p>

##### Instances
``` purescript
Newtype ProvisionedCapacityDescription _
Generic ProvisionedCapacityDescription _
Show ProvisionedCapacityDescription
Decode ProvisionedCapacityDescription
Encode ProvisionedCapacityDescription
```

#### `newProvisionedCapacityDescription`

``` purescript
newProvisionedCapacityDescription :: ProvisionedCapacityDescription
```

Constructs ProvisionedCapacityDescription from required parameters

#### `newProvisionedCapacityDescription'`

``` purescript
newProvisionedCapacityDescription' :: ({ "CapacityId" :: Maybe (String), "StartDate" :: Maybe (String), "ExpirationDate" :: Maybe (String) } -> { "CapacityId" :: Maybe (String), "StartDate" :: Maybe (String), "ExpirationDate" :: Maybe (String) }) -> ProvisionedCapacityDescription
```

Constructs ProvisionedCapacityDescription's fields from required parameters

#### `ProvisionedCapacityList`

``` purescript
newtype ProvisionedCapacityList
  = ProvisionedCapacityList (Array ProvisionedCapacityDescription)
```

##### Instances
``` purescript
Newtype ProvisionedCapacityList _
Generic ProvisionedCapacityList _
Show ProvisionedCapacityList
Decode ProvisionedCapacityList
Encode ProvisionedCapacityList
```

#### `PurchaseProvisionedCapacityInput`

``` purescript
newtype PurchaseProvisionedCapacityInput
  = PurchaseProvisionedCapacityInput { accountId :: String }
```

##### Instances
``` purescript
Newtype PurchaseProvisionedCapacityInput _
Generic PurchaseProvisionedCapacityInput _
Show PurchaseProvisionedCapacityInput
Decode PurchaseProvisionedCapacityInput
Encode PurchaseProvisionedCapacityInput
```

#### `newPurchaseProvisionedCapacityInput`

``` purescript
newPurchaseProvisionedCapacityInput :: String -> PurchaseProvisionedCapacityInput
```

Constructs PurchaseProvisionedCapacityInput from required parameters

#### `newPurchaseProvisionedCapacityInput'`

``` purescript
newPurchaseProvisionedCapacityInput' :: String -> ({ accountId :: String } -> { accountId :: String }) -> PurchaseProvisionedCapacityInput
```

Constructs PurchaseProvisionedCapacityInput's fields from required parameters

#### `PurchaseProvisionedCapacityOutput`

``` purescript
newtype PurchaseProvisionedCapacityOutput
  = PurchaseProvisionedCapacityOutput { capacityId :: Maybe (String) }
```

##### Instances
``` purescript
Newtype PurchaseProvisionedCapacityOutput _
Generic PurchaseProvisionedCapacityOutput _
Show PurchaseProvisionedCapacityOutput
Decode PurchaseProvisionedCapacityOutput
Encode PurchaseProvisionedCapacityOutput
```

#### `newPurchaseProvisionedCapacityOutput`

``` purescript
newPurchaseProvisionedCapacityOutput :: PurchaseProvisionedCapacityOutput
```

Constructs PurchaseProvisionedCapacityOutput from required parameters

#### `newPurchaseProvisionedCapacityOutput'`

``` purescript
newPurchaseProvisionedCapacityOutput' :: ({ capacityId :: Maybe (String) } -> { capacityId :: Maybe (String) }) -> PurchaseProvisionedCapacityOutput
```

Constructs PurchaseProvisionedCapacityOutput's fields from required parameters

#### `QuoteFields`

``` purescript
newtype QuoteFields
  = QuoteFields String
```

##### Instances
``` purescript
Newtype QuoteFields _
Generic QuoteFields _
Show QuoteFields
Decode QuoteFields
Encode QuoteFields
```

#### `RemoveTagsFromVaultInput`

``` purescript
newtype RemoveTagsFromVaultInput
  = RemoveTagsFromVaultInput { accountId :: String, vaultName :: String, "TagKeys" :: Maybe (TagKeyList) }
```

<p>The input value for <code>RemoveTagsFromVaultInput</code>.</p>

##### Instances
``` purescript
Newtype RemoveTagsFromVaultInput _
Generic RemoveTagsFromVaultInput _
Show RemoveTagsFromVaultInput
Decode RemoveTagsFromVaultInput
Encode RemoveTagsFromVaultInput
```

#### `newRemoveTagsFromVaultInput`

``` purescript
newRemoveTagsFromVaultInput :: String -> String -> RemoveTagsFromVaultInput
```

Constructs RemoveTagsFromVaultInput from required parameters

#### `newRemoveTagsFromVaultInput'`

``` purescript
newRemoveTagsFromVaultInput' :: String -> String -> ({ accountId :: String, vaultName :: String, "TagKeys" :: Maybe (TagKeyList) } -> { accountId :: String, vaultName :: String, "TagKeys" :: Maybe (TagKeyList) }) -> RemoveTagsFromVaultInput
```

Constructs RemoveTagsFromVaultInput's fields from required parameters

#### `RequestTimeoutException`

``` purescript
newtype RequestTimeoutException
  = RequestTimeoutException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>

##### Instances
``` purescript
Newtype RequestTimeoutException _
Generic RequestTimeoutException _
Show RequestTimeoutException
Decode RequestTimeoutException
Encode RequestTimeoutException
```

#### `newRequestTimeoutException`

``` purescript
newRequestTimeoutException :: RequestTimeoutException
```

Constructs RequestTimeoutException from required parameters

#### `newRequestTimeoutException'`

``` purescript
newRequestTimeoutException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> RequestTimeoutException
```

Constructs RequestTimeoutException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `S3Location`

``` purescript
newtype S3Location
  = S3Location { "BucketName" :: Maybe (String), "Prefix" :: Maybe (String), "Encryption" :: Maybe (Encryption), "CannedACL" :: Maybe (CannedACL), "AccessControlList" :: Maybe (AccessControlPolicyList), "Tagging" :: Maybe (Hashmap'), "UserMetadata" :: Maybe (Hashmap'), "StorageClass" :: Maybe (StorageClass) }
```

<p>Contains information about the location in Amazon S3 where the select job results are stored.</p>

##### Instances
``` purescript
Newtype S3Location _
Generic S3Location _
Show S3Location
Decode S3Location
Encode S3Location
```

#### `newS3Location`

``` purescript
newS3Location :: S3Location
```

Constructs S3Location from required parameters

#### `newS3Location'`

``` purescript
newS3Location' :: ({ "BucketName" :: Maybe (String), "Prefix" :: Maybe (String), "Encryption" :: Maybe (Encryption), "CannedACL" :: Maybe (CannedACL), "AccessControlList" :: Maybe (AccessControlPolicyList), "Tagging" :: Maybe (Hashmap'), "UserMetadata" :: Maybe (Hashmap'), "StorageClass" :: Maybe (StorageClass) } -> { "BucketName" :: Maybe (String), "Prefix" :: Maybe (String), "Encryption" :: Maybe (Encryption), "CannedACL" :: Maybe (CannedACL), "AccessControlList" :: Maybe (AccessControlPolicyList), "Tagging" :: Maybe (Hashmap'), "UserMetadata" :: Maybe (Hashmap'), "StorageClass" :: Maybe (StorageClass) }) -> S3Location
```

Constructs S3Location's fields from required parameters

#### `SelectParameters`

``` purescript
newtype SelectParameters
  = SelectParameters { "InputSerialization" :: Maybe (InputSerialization), "ExpressionType" :: Maybe (ExpressionType), "Expression" :: Maybe (String), "OutputSerialization" :: Maybe (OutputSerialization) }
```

<p>Contains information about the parameters used for a select.</p>

##### Instances
``` purescript
Newtype SelectParameters _
Generic SelectParameters _
Show SelectParameters
Decode SelectParameters
Encode SelectParameters
```

#### `newSelectParameters`

``` purescript
newSelectParameters :: SelectParameters
```

Constructs SelectParameters from required parameters

#### `newSelectParameters'`

``` purescript
newSelectParameters' :: ({ "InputSerialization" :: Maybe (InputSerialization), "ExpressionType" :: Maybe (ExpressionType), "Expression" :: Maybe (String), "OutputSerialization" :: Maybe (OutputSerialization) } -> { "InputSerialization" :: Maybe (InputSerialization), "ExpressionType" :: Maybe (ExpressionType), "Expression" :: Maybe (String), "OutputSerialization" :: Maybe (OutputSerialization) }) -> SelectParameters
```

Constructs SelectParameters's fields from required parameters

#### `ServiceUnavailableException`

``` purescript
newtype ServiceUnavailableException
  = ServiceUnavailableException { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }
```

<p>Returned if the service cannot complete the request.</p>

##### Instances
``` purescript
Newtype ServiceUnavailableException _
Generic ServiceUnavailableException _
Show ServiceUnavailableException
Decode ServiceUnavailableException
Encode ServiceUnavailableException
```

#### `newServiceUnavailableException`

``` purescript
newServiceUnavailableException :: ServiceUnavailableException
```

Constructs ServiceUnavailableException from required parameters

#### `newServiceUnavailableException'`

``` purescript
newServiceUnavailableException' :: ({ "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) } -> { "type" :: Maybe (String), code :: Maybe (String), message :: Maybe (String) }) -> ServiceUnavailableException
```

Constructs ServiceUnavailableException's fields from required parameters

#### `SetDataRetrievalPolicyInput`

``` purescript
newtype SetDataRetrievalPolicyInput
  = SetDataRetrievalPolicyInput { accountId :: String, "Policy" :: Maybe (DataRetrievalPolicy) }
```

<p>SetDataRetrievalPolicy input.</p>

##### Instances
``` purescript
Newtype SetDataRetrievalPolicyInput _
Generic SetDataRetrievalPolicyInput _
Show SetDataRetrievalPolicyInput
Decode SetDataRetrievalPolicyInput
Encode SetDataRetrievalPolicyInput
```

#### `newSetDataRetrievalPolicyInput`

``` purescript
newSetDataRetrievalPolicyInput :: String -> SetDataRetrievalPolicyInput
```

Constructs SetDataRetrievalPolicyInput from required parameters

#### `newSetDataRetrievalPolicyInput'`

``` purescript
newSetDataRetrievalPolicyInput' :: String -> ({ accountId :: String, "Policy" :: Maybe (DataRetrievalPolicy) } -> { accountId :: String, "Policy" :: Maybe (DataRetrievalPolicy) }) -> SetDataRetrievalPolicyInput
```

Constructs SetDataRetrievalPolicyInput's fields from required parameters

#### `SetVaultAccessPolicyInput`

``` purescript
newtype SetVaultAccessPolicyInput
  = SetVaultAccessPolicyInput { accountId :: String, vaultName :: String, policy :: Maybe (VaultAccessPolicy) }
```

<p>SetVaultAccessPolicy input.</p>

##### Instances
``` purescript
Newtype SetVaultAccessPolicyInput _
Generic SetVaultAccessPolicyInput _
Show SetVaultAccessPolicyInput
Decode SetVaultAccessPolicyInput
Encode SetVaultAccessPolicyInput
```

#### `newSetVaultAccessPolicyInput`

``` purescript
newSetVaultAccessPolicyInput :: String -> String -> SetVaultAccessPolicyInput
```

Constructs SetVaultAccessPolicyInput from required parameters

#### `newSetVaultAccessPolicyInput'`

``` purescript
newSetVaultAccessPolicyInput' :: String -> String -> ({ accountId :: String, vaultName :: String, policy :: Maybe (VaultAccessPolicy) } -> { accountId :: String, vaultName :: String, policy :: Maybe (VaultAccessPolicy) }) -> SetVaultAccessPolicyInput
```

Constructs SetVaultAccessPolicyInput's fields from required parameters

#### `SetVaultNotificationsInput`

``` purescript
newtype SetVaultNotificationsInput
  = SetVaultNotificationsInput { accountId :: String, vaultName :: String, vaultNotificationConfig :: Maybe (VaultNotificationConfig) }
```

<p>Provides options to configure notifications that will be sent when specific events happen to a vault.</p>

##### Instances
``` purescript
Newtype SetVaultNotificationsInput _
Generic SetVaultNotificationsInput _
Show SetVaultNotificationsInput
Decode SetVaultNotificationsInput
Encode SetVaultNotificationsInput
```

#### `newSetVaultNotificationsInput`

``` purescript
newSetVaultNotificationsInput :: String -> String -> SetVaultNotificationsInput
```

Constructs SetVaultNotificationsInput from required parameters

#### `newSetVaultNotificationsInput'`

``` purescript
newSetVaultNotificationsInput' :: String -> String -> ({ accountId :: String, vaultName :: String, vaultNotificationConfig :: Maybe (VaultNotificationConfig) } -> { accountId :: String, vaultName :: String, vaultNotificationConfig :: Maybe (VaultNotificationConfig) }) -> SetVaultNotificationsInput
```

Constructs SetVaultNotificationsInput's fields from required parameters

#### `Size`

``` purescript
newtype Size
  = Size Number
```

##### Instances
``` purescript
Newtype Size _
Generic Size _
Show Size
Decode Size
Encode Size
```

#### `StatusCode`

``` purescript
newtype StatusCode
  = StatusCode String
```

##### Instances
``` purescript
Newtype StatusCode _
Generic StatusCode _
Show StatusCode
Decode StatusCode
Encode StatusCode
```

#### `StorageClass`

``` purescript
newtype StorageClass
  = StorageClass String
```

##### Instances
``` purescript
Newtype StorageClass _
Generic StorageClass _
Show StorageClass
Decode StorageClass
Encode StorageClass
```

#### `Stream`

``` purescript
newtype Stream
  = Stream String
```

##### Instances
``` purescript
Newtype Stream _
Generic Stream _
Show Stream
Decode Stream
Encode Stream
```

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array String)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagMap`

``` purescript
newtype TagMap
  = TagMap (StrMap TagValue)
```

##### Instances
``` purescript
Newtype TagMap _
Generic TagMap _
Show TagMap
Decode TagMap
Encode TagMap
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `Type`

``` purescript
newtype Type
  = Type String
```

##### Instances
``` purescript
Newtype Type _
Generic Type _
Show Type
Decode Type
Encode Type
```

#### `UploadArchiveInput`

``` purescript
newtype UploadArchiveInput
  = UploadArchiveInput { vaultName :: String, accountId :: String, archiveDescription :: Maybe (String), checksum :: Maybe (String), body :: Maybe (Stream) }
```

<p>Provides options to add an archive to a vault.</p>

##### Instances
``` purescript
Newtype UploadArchiveInput _
Generic UploadArchiveInput _
Show UploadArchiveInput
Decode UploadArchiveInput
Encode UploadArchiveInput
```

#### `newUploadArchiveInput`

``` purescript
newUploadArchiveInput :: String -> String -> UploadArchiveInput
```

Constructs UploadArchiveInput from required parameters

#### `newUploadArchiveInput'`

``` purescript
newUploadArchiveInput' :: String -> String -> ({ vaultName :: String, accountId :: String, archiveDescription :: Maybe (String), checksum :: Maybe (String), body :: Maybe (Stream) } -> { vaultName :: String, accountId :: String, archiveDescription :: Maybe (String), checksum :: Maybe (String), body :: Maybe (Stream) }) -> UploadArchiveInput
```

Constructs UploadArchiveInput's fields from required parameters

#### `UploadListElement`

``` purescript
newtype UploadListElement
  = UploadListElement { "MultipartUploadId" :: Maybe (String), "VaultARN" :: Maybe (String), "ArchiveDescription" :: Maybe (String), "PartSizeInBytes" :: Maybe (Number), "CreationDate" :: Maybe (String) }
```

<p>A list of in-progress multipart uploads for a vault.</p>

##### Instances
``` purescript
Newtype UploadListElement _
Generic UploadListElement _
Show UploadListElement
Decode UploadListElement
Encode UploadListElement
```

#### `newUploadListElement`

``` purescript
newUploadListElement :: UploadListElement
```

Constructs UploadListElement from required parameters

#### `newUploadListElement'`

``` purescript
newUploadListElement' :: ({ "MultipartUploadId" :: Maybe (String), "VaultARN" :: Maybe (String), "ArchiveDescription" :: Maybe (String), "PartSizeInBytes" :: Maybe (Number), "CreationDate" :: Maybe (String) } -> { "MultipartUploadId" :: Maybe (String), "VaultARN" :: Maybe (String), "ArchiveDescription" :: Maybe (String), "PartSizeInBytes" :: Maybe (Number), "CreationDate" :: Maybe (String) }) -> UploadListElement
```

Constructs UploadListElement's fields from required parameters

#### `UploadMultipartPartInput`

``` purescript
newtype UploadMultipartPartInput
  = UploadMultipartPartInput { accountId :: String, vaultName :: String, uploadId :: String, checksum :: Maybe (String), range :: Maybe (String), body :: Maybe (Stream) }
```

<p>Provides options to upload a part of an archive in a multipart upload operation.</p>

##### Instances
``` purescript
Newtype UploadMultipartPartInput _
Generic UploadMultipartPartInput _
Show UploadMultipartPartInput
Decode UploadMultipartPartInput
Encode UploadMultipartPartInput
```

#### `newUploadMultipartPartInput`

``` purescript
newUploadMultipartPartInput :: String -> String -> String -> UploadMultipartPartInput
```

Constructs UploadMultipartPartInput from required parameters

#### `newUploadMultipartPartInput'`

``` purescript
newUploadMultipartPartInput' :: String -> String -> String -> ({ accountId :: String, vaultName :: String, uploadId :: String, checksum :: Maybe (String), range :: Maybe (String), body :: Maybe (Stream) } -> { accountId :: String, vaultName :: String, uploadId :: String, checksum :: Maybe (String), range :: Maybe (String), body :: Maybe (Stream) }) -> UploadMultipartPartInput
```

Constructs UploadMultipartPartInput's fields from required parameters

#### `UploadMultipartPartOutput`

``` purescript
newtype UploadMultipartPartOutput
  = UploadMultipartPartOutput { checksum :: Maybe (String) }
```

<p>Contains the Amazon Glacier response to your request.</p>

##### Instances
``` purescript
Newtype UploadMultipartPartOutput _
Generic UploadMultipartPartOutput _
Show UploadMultipartPartOutput
Decode UploadMultipartPartOutput
Encode UploadMultipartPartOutput
```

#### `newUploadMultipartPartOutput`

``` purescript
newUploadMultipartPartOutput :: UploadMultipartPartOutput
```

Constructs UploadMultipartPartOutput from required parameters

#### `newUploadMultipartPartOutput'`

``` purescript
newUploadMultipartPartOutput' :: ({ checksum :: Maybe (String) } -> { checksum :: Maybe (String) }) -> UploadMultipartPartOutput
```

Constructs UploadMultipartPartOutput's fields from required parameters

#### `UploadsList`

``` purescript
newtype UploadsList
  = UploadsList (Array UploadListElement)
```

##### Instances
``` purescript
Newtype UploadsList _
Generic UploadsList _
Show UploadsList
Decode UploadsList
Encode UploadsList
```

#### `VaultAccessPolicy`

``` purescript
newtype VaultAccessPolicy
  = VaultAccessPolicy { "Policy" :: Maybe (String) }
```

<p>Contains the vault access policy.</p>

##### Instances
``` purescript
Newtype VaultAccessPolicy _
Generic VaultAccessPolicy _
Show VaultAccessPolicy
Decode VaultAccessPolicy
Encode VaultAccessPolicy
```

#### `newVaultAccessPolicy`

``` purescript
newVaultAccessPolicy :: VaultAccessPolicy
```

Constructs VaultAccessPolicy from required parameters

#### `newVaultAccessPolicy'`

``` purescript
newVaultAccessPolicy' :: ({ "Policy" :: Maybe (String) } -> { "Policy" :: Maybe (String) }) -> VaultAccessPolicy
```

Constructs VaultAccessPolicy's fields from required parameters

#### `VaultList`

``` purescript
newtype VaultList
  = VaultList (Array DescribeVaultOutput)
```

##### Instances
``` purescript
Newtype VaultList _
Generic VaultList _
Show VaultList
Decode VaultList
Encode VaultList
```

#### `VaultLockPolicy`

``` purescript
newtype VaultLockPolicy
  = VaultLockPolicy { "Policy" :: Maybe (String) }
```

<p>Contains the vault lock policy.</p>

##### Instances
``` purescript
Newtype VaultLockPolicy _
Generic VaultLockPolicy _
Show VaultLockPolicy
Decode VaultLockPolicy
Encode VaultLockPolicy
```

#### `newVaultLockPolicy`

``` purescript
newVaultLockPolicy :: VaultLockPolicy
```

Constructs VaultLockPolicy from required parameters

#### `newVaultLockPolicy'`

``` purescript
newVaultLockPolicy' :: ({ "Policy" :: Maybe (String) } -> { "Policy" :: Maybe (String) }) -> VaultLockPolicy
```

Constructs VaultLockPolicy's fields from required parameters

#### `VaultNotificationConfig`

``` purescript
newtype VaultNotificationConfig
  = VaultNotificationConfig { "SNSTopic" :: Maybe (String), "Events" :: Maybe (NotificationEventList) }
```

<p>Represents a vault's notification configuration.</p>

##### Instances
``` purescript
Newtype VaultNotificationConfig _
Generic VaultNotificationConfig _
Show VaultNotificationConfig
Decode VaultNotificationConfig
Encode VaultNotificationConfig
```

#### `newVaultNotificationConfig`

``` purescript
newVaultNotificationConfig :: VaultNotificationConfig
```

Constructs VaultNotificationConfig from required parameters

#### `newVaultNotificationConfig'`

``` purescript
newVaultNotificationConfig' :: ({ "SNSTopic" :: Maybe (String), "Events" :: Maybe (NotificationEventList) } -> { "SNSTopic" :: Maybe (String), "Events" :: Maybe (NotificationEventList) }) -> VaultNotificationConfig
```

Constructs VaultNotificationConfig's fields from required parameters

#### `Hashmap'`

``` purescript
newtype Hashmap'
  = Hashmap' (StrMap String)
```

##### Instances
``` purescript
Newtype Hashmap' _
Generic Hashmap' _
Show Hashmap'
Decode Hashmap'
Encode Hashmap'
```

#### `Httpstatus'`

``` purescript
newtype Httpstatus'
  = Httpstatus' Int
```

##### Instances
``` purescript
Newtype Httpstatus' _
Generic Httpstatus' _
Show Httpstatus'
Decode Httpstatus'
Encode Httpstatus'
```


