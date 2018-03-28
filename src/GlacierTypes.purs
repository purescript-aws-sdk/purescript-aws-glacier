
module AWS.Glacier.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Provides options to abort a multipart upload identified by the upload ID.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart Upload</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>
newtype AbortMultipartUploadInput = AbortMultipartUploadInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "uploadId" :: (String)
  }
derive instance newtypeAbortMultipartUploadInput :: Newtype AbortMultipartUploadInput _
derive instance repGenericAbortMultipartUploadInput :: Generic AbortMultipartUploadInput _
instance showAbortMultipartUploadInput :: Show AbortMultipartUploadInput where show = genericShow
instance decodeAbortMultipartUploadInput :: Decode AbortMultipartUploadInput where decode = genericDecode options
instance encodeAbortMultipartUploadInput :: Encode AbortMultipartUploadInput where encode = genericEncode options

-- | Constructs AbortMultipartUploadInput from required parameters
newAbortMultipartUploadInput :: String -> String -> String -> AbortMultipartUploadInput
newAbortMultipartUploadInput _accountId _uploadId _vaultName = AbortMultipartUploadInput { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName }

-- | Constructs AbortMultipartUploadInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAbortMultipartUploadInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) } ) -> AbortMultipartUploadInput
newAbortMultipartUploadInput' _accountId _uploadId _vaultName customize = (AbortMultipartUploadInput <<< customize) { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName }



-- | <p>The input values for <code>AbortVaultLock</code>.</p>
newtype AbortVaultLockInput = AbortVaultLockInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeAbortVaultLockInput :: Newtype AbortVaultLockInput _
derive instance repGenericAbortVaultLockInput :: Generic AbortVaultLockInput _
instance showAbortVaultLockInput :: Show AbortVaultLockInput where show = genericShow
instance decodeAbortVaultLockInput :: Decode AbortVaultLockInput where decode = genericDecode options
instance encodeAbortVaultLockInput :: Encode AbortVaultLockInput where encode = genericEncode options

-- | Constructs AbortVaultLockInput from required parameters
newAbortVaultLockInput :: String -> String -> AbortVaultLockInput
newAbortVaultLockInput _accountId _vaultName = AbortVaultLockInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs AbortVaultLockInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAbortVaultLockInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> AbortVaultLockInput
newAbortVaultLockInput' _accountId _vaultName customize = (AbortVaultLockInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



newtype AccessControlPolicyList = AccessControlPolicyList (Array Grant)
derive instance newtypeAccessControlPolicyList :: Newtype AccessControlPolicyList _
derive instance repGenericAccessControlPolicyList :: Generic AccessControlPolicyList _
instance showAccessControlPolicyList :: Show AccessControlPolicyList where show = genericShow
instance decodeAccessControlPolicyList :: Decode AccessControlPolicyList where decode = genericDecode options
instance encodeAccessControlPolicyList :: Encode AccessControlPolicyList where encode = genericEncode options



newtype ActionCode = ActionCode String
derive instance newtypeActionCode :: Newtype ActionCode _
derive instance repGenericActionCode :: Generic ActionCode _
instance showActionCode :: Show ActionCode where show = genericShow
instance decodeActionCode :: Decode ActionCode where decode = genericDecode options
instance encodeActionCode :: Encode ActionCode where encode = genericEncode options



-- | <p>The input values for <code>AddTagsToVault</code>.</p>
newtype AddTagsToVaultInput = AddTagsToVaultInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "Tags" :: NullOrUndefined (TagMap)
  }
derive instance newtypeAddTagsToVaultInput :: Newtype AddTagsToVaultInput _
derive instance repGenericAddTagsToVaultInput :: Generic AddTagsToVaultInput _
instance showAddTagsToVaultInput :: Show AddTagsToVaultInput where show = genericShow
instance decodeAddTagsToVaultInput :: Decode AddTagsToVaultInput where decode = genericDecode options
instance encodeAddTagsToVaultInput :: Encode AddTagsToVaultInput where encode = genericEncode options

-- | Constructs AddTagsToVaultInput from required parameters
newAddTagsToVaultInput :: String -> String -> AddTagsToVaultInput
newAddTagsToVaultInput _accountId _vaultName = AddTagsToVaultInput { "accountId": _accountId, "vaultName": _vaultName, "Tags": (NullOrUndefined Nothing) }

-- | Constructs AddTagsToVaultInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsToVaultInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "Tags" :: NullOrUndefined (TagMap) } -> {"accountId" :: (String) , "vaultName" :: (String) , "Tags" :: NullOrUndefined (TagMap) } ) -> AddTagsToVaultInput
newAddTagsToVaultInput' _accountId _vaultName customize = (AddTagsToVaultInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "Tags": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p> <p>For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a>. For conceptual information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a>.</p>
newtype ArchiveCreationOutput = ArchiveCreationOutput 
  { "location" :: NullOrUndefined (String)
  , "checksum" :: NullOrUndefined (String)
  , "archiveId" :: NullOrUndefined (String)
  }
derive instance newtypeArchiveCreationOutput :: Newtype ArchiveCreationOutput _
derive instance repGenericArchiveCreationOutput :: Generic ArchiveCreationOutput _
instance showArchiveCreationOutput :: Show ArchiveCreationOutput where show = genericShow
instance decodeArchiveCreationOutput :: Decode ArchiveCreationOutput where decode = genericDecode options
instance encodeArchiveCreationOutput :: Encode ArchiveCreationOutput where encode = genericEncode options

-- | Constructs ArchiveCreationOutput from required parameters
newArchiveCreationOutput :: ArchiveCreationOutput
newArchiveCreationOutput  = ArchiveCreationOutput { "archiveId": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing), "location": (NullOrUndefined Nothing) }

-- | Constructs ArchiveCreationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newArchiveCreationOutput' :: ( { "location" :: NullOrUndefined (String) , "checksum" :: NullOrUndefined (String) , "archiveId" :: NullOrUndefined (String) } -> {"location" :: NullOrUndefined (String) , "checksum" :: NullOrUndefined (String) , "archiveId" :: NullOrUndefined (String) } ) -> ArchiveCreationOutput
newArchiveCreationOutput'  customize = (ArchiveCreationOutput <<< customize) { "archiveId": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing), "location": (NullOrUndefined Nothing) }



-- | <p>Contains information about the comma-separated value (CSV) file to select from.</p>
newtype CSVInput = CSVInput 
  { "FileHeaderInfo" :: NullOrUndefined (FileHeaderInfo)
  , "Comments" :: NullOrUndefined (String)
  , "QuoteEscapeCharacter" :: NullOrUndefined (String)
  , "RecordDelimiter" :: NullOrUndefined (String)
  , "FieldDelimiter" :: NullOrUndefined (String)
  , "QuoteCharacter" :: NullOrUndefined (String)
  }
derive instance newtypeCSVInput :: Newtype CSVInput _
derive instance repGenericCSVInput :: Generic CSVInput _
instance showCSVInput :: Show CSVInput where show = genericShow
instance decodeCSVInput :: Decode CSVInput where decode = genericDecode options
instance encodeCSVInput :: Encode CSVInput where encode = genericEncode options

-- | Constructs CSVInput from required parameters
newCSVInput :: CSVInput
newCSVInput  = CSVInput { "Comments": (NullOrUndefined Nothing), "FieldDelimiter": (NullOrUndefined Nothing), "FileHeaderInfo": (NullOrUndefined Nothing), "QuoteCharacter": (NullOrUndefined Nothing), "QuoteEscapeCharacter": (NullOrUndefined Nothing), "RecordDelimiter": (NullOrUndefined Nothing) }

-- | Constructs CSVInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCSVInput' :: ( { "FileHeaderInfo" :: NullOrUndefined (FileHeaderInfo) , "Comments" :: NullOrUndefined (String) , "QuoteEscapeCharacter" :: NullOrUndefined (String) , "RecordDelimiter" :: NullOrUndefined (String) , "FieldDelimiter" :: NullOrUndefined (String) , "QuoteCharacter" :: NullOrUndefined (String) } -> {"FileHeaderInfo" :: NullOrUndefined (FileHeaderInfo) , "Comments" :: NullOrUndefined (String) , "QuoteEscapeCharacter" :: NullOrUndefined (String) , "RecordDelimiter" :: NullOrUndefined (String) , "FieldDelimiter" :: NullOrUndefined (String) , "QuoteCharacter" :: NullOrUndefined (String) } ) -> CSVInput
newCSVInput'  customize = (CSVInput <<< customize) { "Comments": (NullOrUndefined Nothing), "FieldDelimiter": (NullOrUndefined Nothing), "FileHeaderInfo": (NullOrUndefined Nothing), "QuoteCharacter": (NullOrUndefined Nothing), "QuoteEscapeCharacter": (NullOrUndefined Nothing), "RecordDelimiter": (NullOrUndefined Nothing) }



-- | <p>Contains information about the comma-separated value (CSV) file that the job results are stored in.</p>
newtype CSVOutput = CSVOutput 
  { "QuoteFields" :: NullOrUndefined (QuoteFields)
  , "QuoteEscapeCharacter" :: NullOrUndefined (String)
  , "RecordDelimiter" :: NullOrUndefined (String)
  , "FieldDelimiter" :: NullOrUndefined (String)
  , "QuoteCharacter" :: NullOrUndefined (String)
  }
derive instance newtypeCSVOutput :: Newtype CSVOutput _
derive instance repGenericCSVOutput :: Generic CSVOutput _
instance showCSVOutput :: Show CSVOutput where show = genericShow
instance decodeCSVOutput :: Decode CSVOutput where decode = genericDecode options
instance encodeCSVOutput :: Encode CSVOutput where encode = genericEncode options

-- | Constructs CSVOutput from required parameters
newCSVOutput :: CSVOutput
newCSVOutput  = CSVOutput { "FieldDelimiter": (NullOrUndefined Nothing), "QuoteCharacter": (NullOrUndefined Nothing), "QuoteEscapeCharacter": (NullOrUndefined Nothing), "QuoteFields": (NullOrUndefined Nothing), "RecordDelimiter": (NullOrUndefined Nothing) }

-- | Constructs CSVOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCSVOutput' :: ( { "QuoteFields" :: NullOrUndefined (QuoteFields) , "QuoteEscapeCharacter" :: NullOrUndefined (String) , "RecordDelimiter" :: NullOrUndefined (String) , "FieldDelimiter" :: NullOrUndefined (String) , "QuoteCharacter" :: NullOrUndefined (String) } -> {"QuoteFields" :: NullOrUndefined (QuoteFields) , "QuoteEscapeCharacter" :: NullOrUndefined (String) , "RecordDelimiter" :: NullOrUndefined (String) , "FieldDelimiter" :: NullOrUndefined (String) , "QuoteCharacter" :: NullOrUndefined (String) } ) -> CSVOutput
newCSVOutput'  customize = (CSVOutput <<< customize) { "FieldDelimiter": (NullOrUndefined Nothing), "QuoteCharacter": (NullOrUndefined Nothing), "QuoteEscapeCharacter": (NullOrUndefined Nothing), "QuoteFields": (NullOrUndefined Nothing), "RecordDelimiter": (NullOrUndefined Nothing) }



newtype CannedACL = CannedACL String
derive instance newtypeCannedACL :: Newtype CannedACL _
derive instance repGenericCannedACL :: Generic CannedACL _
instance showCannedACL :: Show CannedACL where show = genericShow
instance decodeCannedACL :: Decode CannedACL where decode = genericDecode options
instance encodeCannedACL :: Encode CannedACL where encode = genericEncode options



-- | <p>Provides options to complete a multipart upload operation. This informs Amazon Glacier that all the archive parts have been uploaded and Amazon Glacier can now assemble the archive from the uploaded parts. After assembling and saving the archive to the vault, Amazon Glacier returns the URI path of the newly created archive resource.</p>
newtype CompleteMultipartUploadInput = CompleteMultipartUploadInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "uploadId" :: (String)
  , "archiveSize" :: NullOrUndefined (String)
  , "checksum" :: NullOrUndefined (String)
  }
derive instance newtypeCompleteMultipartUploadInput :: Newtype CompleteMultipartUploadInput _
derive instance repGenericCompleteMultipartUploadInput :: Generic CompleteMultipartUploadInput _
instance showCompleteMultipartUploadInput :: Show CompleteMultipartUploadInput where show = genericShow
instance decodeCompleteMultipartUploadInput :: Decode CompleteMultipartUploadInput where decode = genericDecode options
instance encodeCompleteMultipartUploadInput :: Encode CompleteMultipartUploadInput where encode = genericEncode options

-- | Constructs CompleteMultipartUploadInput from required parameters
newCompleteMultipartUploadInput :: String -> String -> String -> CompleteMultipartUploadInput
newCompleteMultipartUploadInput _accountId _uploadId _vaultName = CompleteMultipartUploadInput { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName, "archiveSize": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing) }

-- | Constructs CompleteMultipartUploadInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteMultipartUploadInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) , "archiveSize" :: NullOrUndefined (String) , "checksum" :: NullOrUndefined (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) , "archiveSize" :: NullOrUndefined (String) , "checksum" :: NullOrUndefined (String) } ) -> CompleteMultipartUploadInput
newCompleteMultipartUploadInput' _accountId _uploadId _vaultName customize = (CompleteMultipartUploadInput <<< customize) { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName, "archiveSize": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing) }



-- | <p>The input values for <code>CompleteVaultLock</code>.</p>
newtype CompleteVaultLockInput = CompleteVaultLockInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "lockId" :: (String)
  }
derive instance newtypeCompleteVaultLockInput :: Newtype CompleteVaultLockInput _
derive instance repGenericCompleteVaultLockInput :: Generic CompleteVaultLockInput _
instance showCompleteVaultLockInput :: Show CompleteVaultLockInput where show = genericShow
instance decodeCompleteVaultLockInput :: Decode CompleteVaultLockInput where decode = genericDecode options
instance encodeCompleteVaultLockInput :: Encode CompleteVaultLockInput where encode = genericEncode options

-- | Constructs CompleteVaultLockInput from required parameters
newCompleteVaultLockInput :: String -> String -> String -> CompleteVaultLockInput
newCompleteVaultLockInput _accountId _lockId _vaultName = CompleteVaultLockInput { "accountId": _accountId, "lockId": _lockId, "vaultName": _vaultName }

-- | Constructs CompleteVaultLockInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompleteVaultLockInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "lockId" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "lockId" :: (String) } ) -> CompleteVaultLockInput
newCompleteVaultLockInput' _accountId _lockId _vaultName customize = (CompleteVaultLockInput <<< customize) { "accountId": _accountId, "lockId": _lockId, "vaultName": _vaultName }



-- | <p>Provides options to create a vault.</p>
newtype CreateVaultInput = CreateVaultInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeCreateVaultInput :: Newtype CreateVaultInput _
derive instance repGenericCreateVaultInput :: Generic CreateVaultInput _
instance showCreateVaultInput :: Show CreateVaultInput where show = genericShow
instance decodeCreateVaultInput :: Decode CreateVaultInput where decode = genericDecode options
instance encodeCreateVaultInput :: Encode CreateVaultInput where encode = genericEncode options

-- | Constructs CreateVaultInput from required parameters
newCreateVaultInput :: String -> String -> CreateVaultInput
newCreateVaultInput _accountId _vaultName = CreateVaultInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs CreateVaultInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVaultInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> CreateVaultInput
newCreateVaultInput' _accountId _vaultName customize = (CreateVaultInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype CreateVaultOutput = CreateVaultOutput 
  { "location" :: NullOrUndefined (String)
  }
derive instance newtypeCreateVaultOutput :: Newtype CreateVaultOutput _
derive instance repGenericCreateVaultOutput :: Generic CreateVaultOutput _
instance showCreateVaultOutput :: Show CreateVaultOutput where show = genericShow
instance decodeCreateVaultOutput :: Decode CreateVaultOutput where decode = genericDecode options
instance encodeCreateVaultOutput :: Encode CreateVaultOutput where encode = genericEncode options

-- | Constructs CreateVaultOutput from required parameters
newCreateVaultOutput :: CreateVaultOutput
newCreateVaultOutput  = CreateVaultOutput { "location": (NullOrUndefined Nothing) }

-- | Constructs CreateVaultOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateVaultOutput' :: ( { "location" :: NullOrUndefined (String) } -> {"location" :: NullOrUndefined (String) } ) -> CreateVaultOutput
newCreateVaultOutput'  customize = (CreateVaultOutput <<< customize) { "location": (NullOrUndefined Nothing) }



-- | <p>Data retrieval policy.</p>
newtype DataRetrievalPolicy = DataRetrievalPolicy 
  { "Rules" :: NullOrUndefined (DataRetrievalRulesList)
  }
derive instance newtypeDataRetrievalPolicy :: Newtype DataRetrievalPolicy _
derive instance repGenericDataRetrievalPolicy :: Generic DataRetrievalPolicy _
instance showDataRetrievalPolicy :: Show DataRetrievalPolicy where show = genericShow
instance decodeDataRetrievalPolicy :: Decode DataRetrievalPolicy where decode = genericDecode options
instance encodeDataRetrievalPolicy :: Encode DataRetrievalPolicy where encode = genericEncode options

-- | Constructs DataRetrievalPolicy from required parameters
newDataRetrievalPolicy :: DataRetrievalPolicy
newDataRetrievalPolicy  = DataRetrievalPolicy { "Rules": (NullOrUndefined Nothing) }

-- | Constructs DataRetrievalPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataRetrievalPolicy' :: ( { "Rules" :: NullOrUndefined (DataRetrievalRulesList) } -> {"Rules" :: NullOrUndefined (DataRetrievalRulesList) } ) -> DataRetrievalPolicy
newDataRetrievalPolicy'  customize = (DataRetrievalPolicy <<< customize) { "Rules": (NullOrUndefined Nothing) }



-- | <p>Data retrieval policy rule.</p>
newtype DataRetrievalRule = DataRetrievalRule 
  { "Strategy" :: NullOrUndefined (String)
  , "BytesPerHour" :: NullOrUndefined (NullableLong)
  }
derive instance newtypeDataRetrievalRule :: Newtype DataRetrievalRule _
derive instance repGenericDataRetrievalRule :: Generic DataRetrievalRule _
instance showDataRetrievalRule :: Show DataRetrievalRule where show = genericShow
instance decodeDataRetrievalRule :: Decode DataRetrievalRule where decode = genericDecode options
instance encodeDataRetrievalRule :: Encode DataRetrievalRule where encode = genericEncode options

-- | Constructs DataRetrievalRule from required parameters
newDataRetrievalRule :: DataRetrievalRule
newDataRetrievalRule  = DataRetrievalRule { "BytesPerHour": (NullOrUndefined Nothing), "Strategy": (NullOrUndefined Nothing) }

-- | Constructs DataRetrievalRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataRetrievalRule' :: ( { "Strategy" :: NullOrUndefined (String) , "BytesPerHour" :: NullOrUndefined (NullableLong) } -> {"Strategy" :: NullOrUndefined (String) , "BytesPerHour" :: NullOrUndefined (NullableLong) } ) -> DataRetrievalRule
newDataRetrievalRule'  customize = (DataRetrievalRule <<< customize) { "BytesPerHour": (NullOrUndefined Nothing), "Strategy": (NullOrUndefined Nothing) }



newtype DataRetrievalRulesList = DataRetrievalRulesList (Array DataRetrievalRule)
derive instance newtypeDataRetrievalRulesList :: Newtype DataRetrievalRulesList _
derive instance repGenericDataRetrievalRulesList :: Generic DataRetrievalRulesList _
instance showDataRetrievalRulesList :: Show DataRetrievalRulesList where show = genericShow
instance decodeDataRetrievalRulesList :: Decode DataRetrievalRulesList where decode = genericDecode options
instance encodeDataRetrievalRulesList :: Encode DataRetrievalRulesList where encode = genericEncode options



newtype DateTime = DateTime String
derive instance newtypeDateTime :: Newtype DateTime _
derive instance repGenericDateTime :: Generic DateTime _
instance showDateTime :: Show DateTime where show = genericShow
instance decodeDateTime :: Decode DateTime where decode = genericDecode options
instance encodeDateTime :: Encode DateTime where encode = genericEncode options



-- | <p>Provides options for deleting an archive from an Amazon Glacier vault.</p>
newtype DeleteArchiveInput = DeleteArchiveInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "archiveId" :: (String)
  }
derive instance newtypeDeleteArchiveInput :: Newtype DeleteArchiveInput _
derive instance repGenericDeleteArchiveInput :: Generic DeleteArchiveInput _
instance showDeleteArchiveInput :: Show DeleteArchiveInput where show = genericShow
instance decodeDeleteArchiveInput :: Decode DeleteArchiveInput where decode = genericDecode options
instance encodeDeleteArchiveInput :: Encode DeleteArchiveInput where encode = genericEncode options

-- | Constructs DeleteArchiveInput from required parameters
newDeleteArchiveInput :: String -> String -> String -> DeleteArchiveInput
newDeleteArchiveInput _accountId _archiveId _vaultName = DeleteArchiveInput { "accountId": _accountId, "archiveId": _archiveId, "vaultName": _vaultName }

-- | Constructs DeleteArchiveInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteArchiveInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "archiveId" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "archiveId" :: (String) } ) -> DeleteArchiveInput
newDeleteArchiveInput' _accountId _archiveId _vaultName customize = (DeleteArchiveInput <<< customize) { "accountId": _accountId, "archiveId": _archiveId, "vaultName": _vaultName }



-- | <p>DeleteVaultAccessPolicy input.</p>
newtype DeleteVaultAccessPolicyInput = DeleteVaultAccessPolicyInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeDeleteVaultAccessPolicyInput :: Newtype DeleteVaultAccessPolicyInput _
derive instance repGenericDeleteVaultAccessPolicyInput :: Generic DeleteVaultAccessPolicyInput _
instance showDeleteVaultAccessPolicyInput :: Show DeleteVaultAccessPolicyInput where show = genericShow
instance decodeDeleteVaultAccessPolicyInput :: Decode DeleteVaultAccessPolicyInput where decode = genericDecode options
instance encodeDeleteVaultAccessPolicyInput :: Encode DeleteVaultAccessPolicyInput where encode = genericEncode options

-- | Constructs DeleteVaultAccessPolicyInput from required parameters
newDeleteVaultAccessPolicyInput :: String -> String -> DeleteVaultAccessPolicyInput
newDeleteVaultAccessPolicyInput _accountId _vaultName = DeleteVaultAccessPolicyInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs DeleteVaultAccessPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVaultAccessPolicyInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> DeleteVaultAccessPolicyInput
newDeleteVaultAccessPolicyInput' _accountId _vaultName customize = (DeleteVaultAccessPolicyInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Provides options for deleting a vault from Amazon Glacier.</p>
newtype DeleteVaultInput = DeleteVaultInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeDeleteVaultInput :: Newtype DeleteVaultInput _
derive instance repGenericDeleteVaultInput :: Generic DeleteVaultInput _
instance showDeleteVaultInput :: Show DeleteVaultInput where show = genericShow
instance decodeDeleteVaultInput :: Decode DeleteVaultInput where decode = genericDecode options
instance encodeDeleteVaultInput :: Encode DeleteVaultInput where encode = genericEncode options

-- | Constructs DeleteVaultInput from required parameters
newDeleteVaultInput :: String -> String -> DeleteVaultInput
newDeleteVaultInput _accountId _vaultName = DeleteVaultInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs DeleteVaultInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVaultInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> DeleteVaultInput
newDeleteVaultInput' _accountId _vaultName customize = (DeleteVaultInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Provides options for deleting a vault notification configuration from an Amazon Glacier vault.</p>
newtype DeleteVaultNotificationsInput = DeleteVaultNotificationsInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeDeleteVaultNotificationsInput :: Newtype DeleteVaultNotificationsInput _
derive instance repGenericDeleteVaultNotificationsInput :: Generic DeleteVaultNotificationsInput _
instance showDeleteVaultNotificationsInput :: Show DeleteVaultNotificationsInput where show = genericShow
instance decodeDeleteVaultNotificationsInput :: Decode DeleteVaultNotificationsInput where decode = genericDecode options
instance encodeDeleteVaultNotificationsInput :: Encode DeleteVaultNotificationsInput where encode = genericEncode options

-- | Constructs DeleteVaultNotificationsInput from required parameters
newDeleteVaultNotificationsInput :: String -> String -> DeleteVaultNotificationsInput
newDeleteVaultNotificationsInput _accountId _vaultName = DeleteVaultNotificationsInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs DeleteVaultNotificationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteVaultNotificationsInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> DeleteVaultNotificationsInput
newDeleteVaultNotificationsInput' _accountId _vaultName customize = (DeleteVaultNotificationsInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Provides options for retrieving a job description.</p>
newtype DescribeJobInput = DescribeJobInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "jobId" :: (String)
  }
derive instance newtypeDescribeJobInput :: Newtype DescribeJobInput _
derive instance repGenericDescribeJobInput :: Generic DescribeJobInput _
instance showDescribeJobInput :: Show DescribeJobInput where show = genericShow
instance decodeDescribeJobInput :: Decode DescribeJobInput where decode = genericDecode options
instance encodeDescribeJobInput :: Encode DescribeJobInput where encode = genericEncode options

-- | Constructs DescribeJobInput from required parameters
newDescribeJobInput :: String -> String -> String -> DescribeJobInput
newDescribeJobInput _accountId _jobId _vaultName = DescribeJobInput { "accountId": _accountId, "jobId": _jobId, "vaultName": _vaultName }

-- | Constructs DescribeJobInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "jobId" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "jobId" :: (String) } ) -> DescribeJobInput
newDescribeJobInput' _accountId _jobId _vaultName customize = (DescribeJobInput <<< customize) { "accountId": _accountId, "jobId": _jobId, "vaultName": _vaultName }



-- | <p>Provides options for retrieving metadata for a specific vault in Amazon Glacier.</p>
newtype DescribeVaultInput = DescribeVaultInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeDescribeVaultInput :: Newtype DescribeVaultInput _
derive instance repGenericDescribeVaultInput :: Generic DescribeVaultInput _
instance showDescribeVaultInput :: Show DescribeVaultInput where show = genericShow
instance decodeDescribeVaultInput :: Decode DescribeVaultInput where decode = genericDecode options
instance encodeDescribeVaultInput :: Encode DescribeVaultInput where encode = genericEncode options

-- | Constructs DescribeVaultInput from required parameters
newDescribeVaultInput :: String -> String -> DescribeVaultInput
newDescribeVaultInput _accountId _vaultName = DescribeVaultInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs DescribeVaultInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVaultInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> DescribeVaultInput
newDescribeVaultInput' _accountId _vaultName customize = (DescribeVaultInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype DescribeVaultOutput = DescribeVaultOutput 
  { "VaultARN" :: NullOrUndefined (String)
  , "VaultName" :: NullOrUndefined (String)
  , "CreationDate" :: NullOrUndefined (String)
  , "LastInventoryDate" :: NullOrUndefined (String)
  , "NumberOfArchives" :: NullOrUndefined (Number)
  , "SizeInBytes" :: NullOrUndefined (Number)
  }
derive instance newtypeDescribeVaultOutput :: Newtype DescribeVaultOutput _
derive instance repGenericDescribeVaultOutput :: Generic DescribeVaultOutput _
instance showDescribeVaultOutput :: Show DescribeVaultOutput where show = genericShow
instance decodeDescribeVaultOutput :: Decode DescribeVaultOutput where decode = genericDecode options
instance encodeDescribeVaultOutput :: Encode DescribeVaultOutput where encode = genericEncode options

-- | Constructs DescribeVaultOutput from required parameters
newDescribeVaultOutput :: DescribeVaultOutput
newDescribeVaultOutput  = DescribeVaultOutput { "CreationDate": (NullOrUndefined Nothing), "LastInventoryDate": (NullOrUndefined Nothing), "NumberOfArchives": (NullOrUndefined Nothing), "SizeInBytes": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing), "VaultName": (NullOrUndefined Nothing) }

-- | Constructs DescribeVaultOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeVaultOutput' :: ( { "VaultARN" :: NullOrUndefined (String) , "VaultName" :: NullOrUndefined (String) , "CreationDate" :: NullOrUndefined (String) , "LastInventoryDate" :: NullOrUndefined (String) , "NumberOfArchives" :: NullOrUndefined (Number) , "SizeInBytes" :: NullOrUndefined (Number) } -> {"VaultARN" :: NullOrUndefined (String) , "VaultName" :: NullOrUndefined (String) , "CreationDate" :: NullOrUndefined (String) , "LastInventoryDate" :: NullOrUndefined (String) , "NumberOfArchives" :: NullOrUndefined (Number) , "SizeInBytes" :: NullOrUndefined (Number) } ) -> DescribeVaultOutput
newDescribeVaultOutput'  customize = (DescribeVaultOutput <<< customize) { "CreationDate": (NullOrUndefined Nothing), "LastInventoryDate": (NullOrUndefined Nothing), "NumberOfArchives": (NullOrUndefined Nothing), "SizeInBytes": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing), "VaultName": (NullOrUndefined Nothing) }



-- | <p>Contains information about the encryption used to store the job results in Amazon S3. </p>
newtype Encryption = Encryption 
  { "EncryptionType" :: NullOrUndefined (EncryptionType)
  , "KMSKeyId" :: NullOrUndefined (String)
  , "KMSContext" :: NullOrUndefined (String)
  }
derive instance newtypeEncryption :: Newtype Encryption _
derive instance repGenericEncryption :: Generic Encryption _
instance showEncryption :: Show Encryption where show = genericShow
instance decodeEncryption :: Decode Encryption where decode = genericDecode options
instance encodeEncryption :: Encode Encryption where encode = genericEncode options

-- | Constructs Encryption from required parameters
newEncryption :: Encryption
newEncryption  = Encryption { "EncryptionType": (NullOrUndefined Nothing), "KMSContext": (NullOrUndefined Nothing), "KMSKeyId": (NullOrUndefined Nothing) }

-- | Constructs Encryption's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEncryption' :: ( { "EncryptionType" :: NullOrUndefined (EncryptionType) , "KMSKeyId" :: NullOrUndefined (String) , "KMSContext" :: NullOrUndefined (String) } -> {"EncryptionType" :: NullOrUndefined (EncryptionType) , "KMSKeyId" :: NullOrUndefined (String) , "KMSContext" :: NullOrUndefined (String) } ) -> Encryption
newEncryption'  customize = (Encryption <<< customize) { "EncryptionType": (NullOrUndefined Nothing), "KMSContext": (NullOrUndefined Nothing), "KMSKeyId": (NullOrUndefined Nothing) }



newtype EncryptionType = EncryptionType String
derive instance newtypeEncryptionType :: Newtype EncryptionType _
derive instance repGenericEncryptionType :: Generic EncryptionType _
instance showEncryptionType :: Show EncryptionType where show = genericShow
instance decodeEncryptionType :: Decode EncryptionType where decode = genericDecode options
instance encodeEncryptionType :: Encode EncryptionType where encode = genericEncode options



newtype ExpressionType = ExpressionType String
derive instance newtypeExpressionType :: Newtype ExpressionType _
derive instance repGenericExpressionType :: Generic ExpressionType _
instance showExpressionType :: Show ExpressionType where show = genericShow
instance decodeExpressionType :: Decode ExpressionType where decode = genericDecode options
instance encodeExpressionType :: Encode ExpressionType where encode = genericEncode options



newtype FileHeaderInfo = FileHeaderInfo String
derive instance newtypeFileHeaderInfo :: Newtype FileHeaderInfo _
derive instance repGenericFileHeaderInfo :: Generic FileHeaderInfo _
instance showFileHeaderInfo :: Show FileHeaderInfo where show = genericShow
instance decodeFileHeaderInfo :: Decode FileHeaderInfo where decode = genericDecode options
instance encodeFileHeaderInfo :: Encode FileHeaderInfo where encode = genericEncode options



-- | <p>Input for GetDataRetrievalPolicy.</p>
newtype GetDataRetrievalPolicyInput = GetDataRetrievalPolicyInput 
  { "accountId" :: (String)
  }
derive instance newtypeGetDataRetrievalPolicyInput :: Newtype GetDataRetrievalPolicyInput _
derive instance repGenericGetDataRetrievalPolicyInput :: Generic GetDataRetrievalPolicyInput _
instance showGetDataRetrievalPolicyInput :: Show GetDataRetrievalPolicyInput where show = genericShow
instance decodeGetDataRetrievalPolicyInput :: Decode GetDataRetrievalPolicyInput where decode = genericDecode options
instance encodeGetDataRetrievalPolicyInput :: Encode GetDataRetrievalPolicyInput where encode = genericEncode options

-- | Constructs GetDataRetrievalPolicyInput from required parameters
newGetDataRetrievalPolicyInput :: String -> GetDataRetrievalPolicyInput
newGetDataRetrievalPolicyInput _accountId = GetDataRetrievalPolicyInput { "accountId": _accountId }

-- | Constructs GetDataRetrievalPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDataRetrievalPolicyInput' :: String -> ( { "accountId" :: (String) } -> {"accountId" :: (String) } ) -> GetDataRetrievalPolicyInput
newGetDataRetrievalPolicyInput' _accountId customize = (GetDataRetrievalPolicyInput <<< customize) { "accountId": _accountId }



-- | <p>Contains the Amazon Glacier response to the <code>GetDataRetrievalPolicy</code> request.</p>
newtype GetDataRetrievalPolicyOutput = GetDataRetrievalPolicyOutput 
  { "Policy" :: NullOrUndefined (DataRetrievalPolicy)
  }
derive instance newtypeGetDataRetrievalPolicyOutput :: Newtype GetDataRetrievalPolicyOutput _
derive instance repGenericGetDataRetrievalPolicyOutput :: Generic GetDataRetrievalPolicyOutput _
instance showGetDataRetrievalPolicyOutput :: Show GetDataRetrievalPolicyOutput where show = genericShow
instance decodeGetDataRetrievalPolicyOutput :: Decode GetDataRetrievalPolicyOutput where decode = genericDecode options
instance encodeGetDataRetrievalPolicyOutput :: Encode GetDataRetrievalPolicyOutput where encode = genericEncode options

-- | Constructs GetDataRetrievalPolicyOutput from required parameters
newGetDataRetrievalPolicyOutput :: GetDataRetrievalPolicyOutput
newGetDataRetrievalPolicyOutput  = GetDataRetrievalPolicyOutput { "Policy": (NullOrUndefined Nothing) }

-- | Constructs GetDataRetrievalPolicyOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetDataRetrievalPolicyOutput' :: ( { "Policy" :: NullOrUndefined (DataRetrievalPolicy) } -> {"Policy" :: NullOrUndefined (DataRetrievalPolicy) } ) -> GetDataRetrievalPolicyOutput
newGetDataRetrievalPolicyOutput'  customize = (GetDataRetrievalPolicyOutput <<< customize) { "Policy": (NullOrUndefined Nothing) }



-- | <p>Provides options for downloading output of an Amazon Glacier job.</p>
newtype GetJobOutputInput = GetJobOutputInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "jobId" :: (String)
  , "range" :: NullOrUndefined (String)
  }
derive instance newtypeGetJobOutputInput :: Newtype GetJobOutputInput _
derive instance repGenericGetJobOutputInput :: Generic GetJobOutputInput _
instance showGetJobOutputInput :: Show GetJobOutputInput where show = genericShow
instance decodeGetJobOutputInput :: Decode GetJobOutputInput where decode = genericDecode options
instance encodeGetJobOutputInput :: Encode GetJobOutputInput where encode = genericEncode options

-- | Constructs GetJobOutputInput from required parameters
newGetJobOutputInput :: String -> String -> String -> GetJobOutputInput
newGetJobOutputInput _accountId _jobId _vaultName = GetJobOutputInput { "accountId": _accountId, "jobId": _jobId, "vaultName": _vaultName, "range": (NullOrUndefined Nothing) }

-- | Constructs GetJobOutputInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobOutputInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "jobId" :: (String) , "range" :: NullOrUndefined (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "jobId" :: (String) , "range" :: NullOrUndefined (String) } ) -> GetJobOutputInput
newGetJobOutputInput' _accountId _jobId _vaultName customize = (GetJobOutputInput <<< customize) { "accountId": _accountId, "jobId": _jobId, "vaultName": _vaultName, "range": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype GetJobOutputOutput = GetJobOutputOutput 
  { "body" :: NullOrUndefined (Stream)
  , "checksum" :: NullOrUndefined (String)
  , "status" :: NullOrUndefined (Httpstatus')
  , "contentRange" :: NullOrUndefined (String)
  , "acceptRanges" :: NullOrUndefined (String)
  , "contentType" :: NullOrUndefined (String)
  , "archiveDescription" :: NullOrUndefined (String)
  }
derive instance newtypeGetJobOutputOutput :: Newtype GetJobOutputOutput _
derive instance repGenericGetJobOutputOutput :: Generic GetJobOutputOutput _
instance showGetJobOutputOutput :: Show GetJobOutputOutput where show = genericShow
instance decodeGetJobOutputOutput :: Decode GetJobOutputOutput where decode = genericDecode options
instance encodeGetJobOutputOutput :: Encode GetJobOutputOutput where encode = genericEncode options

-- | Constructs GetJobOutputOutput from required parameters
newGetJobOutputOutput :: GetJobOutputOutput
newGetJobOutputOutput  = GetJobOutputOutput { "acceptRanges": (NullOrUndefined Nothing), "archiveDescription": (NullOrUndefined Nothing), "body": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing), "contentRange": (NullOrUndefined Nothing), "contentType": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }

-- | Constructs GetJobOutputOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobOutputOutput' :: ( { "body" :: NullOrUndefined (Stream) , "checksum" :: NullOrUndefined (String) , "status" :: NullOrUndefined (Httpstatus') , "contentRange" :: NullOrUndefined (String) , "acceptRanges" :: NullOrUndefined (String) , "contentType" :: NullOrUndefined (String) , "archiveDescription" :: NullOrUndefined (String) } -> {"body" :: NullOrUndefined (Stream) , "checksum" :: NullOrUndefined (String) , "status" :: NullOrUndefined (Httpstatus') , "contentRange" :: NullOrUndefined (String) , "acceptRanges" :: NullOrUndefined (String) , "contentType" :: NullOrUndefined (String) , "archiveDescription" :: NullOrUndefined (String) } ) -> GetJobOutputOutput
newGetJobOutputOutput'  customize = (GetJobOutputOutput <<< customize) { "acceptRanges": (NullOrUndefined Nothing), "archiveDescription": (NullOrUndefined Nothing), "body": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing), "contentRange": (NullOrUndefined Nothing), "contentType": (NullOrUndefined Nothing), "status": (NullOrUndefined Nothing) }



-- | <p>Input for GetVaultAccessPolicy.</p>
newtype GetVaultAccessPolicyInput = GetVaultAccessPolicyInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeGetVaultAccessPolicyInput :: Newtype GetVaultAccessPolicyInput _
derive instance repGenericGetVaultAccessPolicyInput :: Generic GetVaultAccessPolicyInput _
instance showGetVaultAccessPolicyInput :: Show GetVaultAccessPolicyInput where show = genericShow
instance decodeGetVaultAccessPolicyInput :: Decode GetVaultAccessPolicyInput where decode = genericDecode options
instance encodeGetVaultAccessPolicyInput :: Encode GetVaultAccessPolicyInput where encode = genericEncode options

-- | Constructs GetVaultAccessPolicyInput from required parameters
newGetVaultAccessPolicyInput :: String -> String -> GetVaultAccessPolicyInput
newGetVaultAccessPolicyInput _accountId _vaultName = GetVaultAccessPolicyInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs GetVaultAccessPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetVaultAccessPolicyInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> GetVaultAccessPolicyInput
newGetVaultAccessPolicyInput' _accountId _vaultName customize = (GetVaultAccessPolicyInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Output for GetVaultAccessPolicy.</p>
newtype GetVaultAccessPolicyOutput = GetVaultAccessPolicyOutput 
  { "policy" :: NullOrUndefined (VaultAccessPolicy)
  }
derive instance newtypeGetVaultAccessPolicyOutput :: Newtype GetVaultAccessPolicyOutput _
derive instance repGenericGetVaultAccessPolicyOutput :: Generic GetVaultAccessPolicyOutput _
instance showGetVaultAccessPolicyOutput :: Show GetVaultAccessPolicyOutput where show = genericShow
instance decodeGetVaultAccessPolicyOutput :: Decode GetVaultAccessPolicyOutput where decode = genericDecode options
instance encodeGetVaultAccessPolicyOutput :: Encode GetVaultAccessPolicyOutput where encode = genericEncode options

-- | Constructs GetVaultAccessPolicyOutput from required parameters
newGetVaultAccessPolicyOutput :: GetVaultAccessPolicyOutput
newGetVaultAccessPolicyOutput  = GetVaultAccessPolicyOutput { "policy": (NullOrUndefined Nothing) }

-- | Constructs GetVaultAccessPolicyOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetVaultAccessPolicyOutput' :: ( { "policy" :: NullOrUndefined (VaultAccessPolicy) } -> {"policy" :: NullOrUndefined (VaultAccessPolicy) } ) -> GetVaultAccessPolicyOutput
newGetVaultAccessPolicyOutput'  customize = (GetVaultAccessPolicyOutput <<< customize) { "policy": (NullOrUndefined Nothing) }



-- | <p>The input values for <code>GetVaultLock</code>.</p>
newtype GetVaultLockInput = GetVaultLockInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeGetVaultLockInput :: Newtype GetVaultLockInput _
derive instance repGenericGetVaultLockInput :: Generic GetVaultLockInput _
instance showGetVaultLockInput :: Show GetVaultLockInput where show = genericShow
instance decodeGetVaultLockInput :: Decode GetVaultLockInput where decode = genericDecode options
instance encodeGetVaultLockInput :: Encode GetVaultLockInput where encode = genericEncode options

-- | Constructs GetVaultLockInput from required parameters
newGetVaultLockInput :: String -> String -> GetVaultLockInput
newGetVaultLockInput _accountId _vaultName = GetVaultLockInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs GetVaultLockInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetVaultLockInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> GetVaultLockInput
newGetVaultLockInput' _accountId _vaultName customize = (GetVaultLockInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype GetVaultLockOutput = GetVaultLockOutput 
  { "Policy" :: NullOrUndefined (String)
  , "State" :: NullOrUndefined (String)
  , "ExpirationDate" :: NullOrUndefined (String)
  , "CreationDate" :: NullOrUndefined (String)
  }
derive instance newtypeGetVaultLockOutput :: Newtype GetVaultLockOutput _
derive instance repGenericGetVaultLockOutput :: Generic GetVaultLockOutput _
instance showGetVaultLockOutput :: Show GetVaultLockOutput where show = genericShow
instance decodeGetVaultLockOutput :: Decode GetVaultLockOutput where decode = genericDecode options
instance encodeGetVaultLockOutput :: Encode GetVaultLockOutput where encode = genericEncode options

-- | Constructs GetVaultLockOutput from required parameters
newGetVaultLockOutput :: GetVaultLockOutput
newGetVaultLockOutput  = GetVaultLockOutput { "CreationDate": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }

-- | Constructs GetVaultLockOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetVaultLockOutput' :: ( { "Policy" :: NullOrUndefined (String) , "State" :: NullOrUndefined (String) , "ExpirationDate" :: NullOrUndefined (String) , "CreationDate" :: NullOrUndefined (String) } -> {"Policy" :: NullOrUndefined (String) , "State" :: NullOrUndefined (String) , "ExpirationDate" :: NullOrUndefined (String) , "CreationDate" :: NullOrUndefined (String) } ) -> GetVaultLockOutput
newGetVaultLockOutput'  customize = (GetVaultLockOutput <<< customize) { "CreationDate": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "Policy": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }



-- | <p>Provides options for retrieving the notification configuration set on an Amazon Glacier vault.</p>
newtype GetVaultNotificationsInput = GetVaultNotificationsInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeGetVaultNotificationsInput :: Newtype GetVaultNotificationsInput _
derive instance repGenericGetVaultNotificationsInput :: Generic GetVaultNotificationsInput _
instance showGetVaultNotificationsInput :: Show GetVaultNotificationsInput where show = genericShow
instance decodeGetVaultNotificationsInput :: Decode GetVaultNotificationsInput where decode = genericDecode options
instance encodeGetVaultNotificationsInput :: Encode GetVaultNotificationsInput where encode = genericEncode options

-- | Constructs GetVaultNotificationsInput from required parameters
newGetVaultNotificationsInput :: String -> String -> GetVaultNotificationsInput
newGetVaultNotificationsInput _accountId _vaultName = GetVaultNotificationsInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs GetVaultNotificationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetVaultNotificationsInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> GetVaultNotificationsInput
newGetVaultNotificationsInput' _accountId _vaultName customize = (GetVaultNotificationsInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype GetVaultNotificationsOutput = GetVaultNotificationsOutput 
  { "vaultNotificationConfig" :: NullOrUndefined (VaultNotificationConfig)
  }
derive instance newtypeGetVaultNotificationsOutput :: Newtype GetVaultNotificationsOutput _
derive instance repGenericGetVaultNotificationsOutput :: Generic GetVaultNotificationsOutput _
instance showGetVaultNotificationsOutput :: Show GetVaultNotificationsOutput where show = genericShow
instance decodeGetVaultNotificationsOutput :: Decode GetVaultNotificationsOutput where decode = genericDecode options
instance encodeGetVaultNotificationsOutput :: Encode GetVaultNotificationsOutput where encode = genericEncode options

-- | Constructs GetVaultNotificationsOutput from required parameters
newGetVaultNotificationsOutput :: GetVaultNotificationsOutput
newGetVaultNotificationsOutput  = GetVaultNotificationsOutput { "vaultNotificationConfig": (NullOrUndefined Nothing) }

-- | Constructs GetVaultNotificationsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetVaultNotificationsOutput' :: ( { "vaultNotificationConfig" :: NullOrUndefined (VaultNotificationConfig) } -> {"vaultNotificationConfig" :: NullOrUndefined (VaultNotificationConfig) } ) -> GetVaultNotificationsOutput
newGetVaultNotificationsOutput'  customize = (GetVaultNotificationsOutput <<< customize) { "vaultNotificationConfig": (NullOrUndefined Nothing) }



-- | <p>Contains the description of an Amazon Glacier job.</p>
newtype GlacierJobDescription = GlacierJobDescription 
  { "JobId" :: NullOrUndefined (String)
  , "JobDescription" :: NullOrUndefined (String)
  , "Action" :: NullOrUndefined (ActionCode)
  , "ArchiveId" :: NullOrUndefined (String)
  , "VaultARN" :: NullOrUndefined (String)
  , "CreationDate" :: NullOrUndefined (String)
  , "Completed" :: NullOrUndefined (Boolean)
  , "StatusCode" :: NullOrUndefined (StatusCode)
  , "StatusMessage" :: NullOrUndefined (String)
  , "ArchiveSizeInBytes" :: NullOrUndefined (Size)
  , "InventorySizeInBytes" :: NullOrUndefined (Size)
  , "SNSTopic" :: NullOrUndefined (String)
  , "CompletionDate" :: NullOrUndefined (String)
  , "SHA256TreeHash" :: NullOrUndefined (String)
  , "ArchiveSHA256TreeHash" :: NullOrUndefined (String)
  , "RetrievalByteRange" :: NullOrUndefined (String)
  , "Tier" :: NullOrUndefined (String)
  , "InventoryRetrievalParameters" :: NullOrUndefined (InventoryRetrievalJobDescription)
  , "JobOutputPath" :: NullOrUndefined (String)
  , "SelectParameters" :: NullOrUndefined (SelectParameters)
  , "OutputLocation" :: NullOrUndefined (OutputLocation)
  }
derive instance newtypeGlacierJobDescription :: Newtype GlacierJobDescription _
derive instance repGenericGlacierJobDescription :: Generic GlacierJobDescription _
instance showGlacierJobDescription :: Show GlacierJobDescription where show = genericShow
instance decodeGlacierJobDescription :: Decode GlacierJobDescription where decode = genericDecode options
instance encodeGlacierJobDescription :: Encode GlacierJobDescription where encode = genericEncode options

-- | Constructs GlacierJobDescription from required parameters
newGlacierJobDescription :: GlacierJobDescription
newGlacierJobDescription  = GlacierJobDescription { "Action": (NullOrUndefined Nothing), "ArchiveId": (NullOrUndefined Nothing), "ArchiveSHA256TreeHash": (NullOrUndefined Nothing), "ArchiveSizeInBytes": (NullOrUndefined Nothing), "Completed": (NullOrUndefined Nothing), "CompletionDate": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "InventoryRetrievalParameters": (NullOrUndefined Nothing), "InventorySizeInBytes": (NullOrUndefined Nothing), "JobDescription": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobOutputPath": (NullOrUndefined Nothing), "OutputLocation": (NullOrUndefined Nothing), "RetrievalByteRange": (NullOrUndefined Nothing), "SHA256TreeHash": (NullOrUndefined Nothing), "SNSTopic": (NullOrUndefined Nothing), "SelectParameters": (NullOrUndefined Nothing), "StatusCode": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing) }

-- | Constructs GlacierJobDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGlacierJobDescription' :: ( { "JobId" :: NullOrUndefined (String) , "JobDescription" :: NullOrUndefined (String) , "Action" :: NullOrUndefined (ActionCode) , "ArchiveId" :: NullOrUndefined (String) , "VaultARN" :: NullOrUndefined (String) , "CreationDate" :: NullOrUndefined (String) , "Completed" :: NullOrUndefined (Boolean) , "StatusCode" :: NullOrUndefined (StatusCode) , "StatusMessage" :: NullOrUndefined (String) , "ArchiveSizeInBytes" :: NullOrUndefined (Size) , "InventorySizeInBytes" :: NullOrUndefined (Size) , "SNSTopic" :: NullOrUndefined (String) , "CompletionDate" :: NullOrUndefined (String) , "SHA256TreeHash" :: NullOrUndefined (String) , "ArchiveSHA256TreeHash" :: NullOrUndefined (String) , "RetrievalByteRange" :: NullOrUndefined (String) , "Tier" :: NullOrUndefined (String) , "InventoryRetrievalParameters" :: NullOrUndefined (InventoryRetrievalJobDescription) , "JobOutputPath" :: NullOrUndefined (String) , "SelectParameters" :: NullOrUndefined (SelectParameters) , "OutputLocation" :: NullOrUndefined (OutputLocation) } -> {"JobId" :: NullOrUndefined (String) , "JobDescription" :: NullOrUndefined (String) , "Action" :: NullOrUndefined (ActionCode) , "ArchiveId" :: NullOrUndefined (String) , "VaultARN" :: NullOrUndefined (String) , "CreationDate" :: NullOrUndefined (String) , "Completed" :: NullOrUndefined (Boolean) , "StatusCode" :: NullOrUndefined (StatusCode) , "StatusMessage" :: NullOrUndefined (String) , "ArchiveSizeInBytes" :: NullOrUndefined (Size) , "InventorySizeInBytes" :: NullOrUndefined (Size) , "SNSTopic" :: NullOrUndefined (String) , "CompletionDate" :: NullOrUndefined (String) , "SHA256TreeHash" :: NullOrUndefined (String) , "ArchiveSHA256TreeHash" :: NullOrUndefined (String) , "RetrievalByteRange" :: NullOrUndefined (String) , "Tier" :: NullOrUndefined (String) , "InventoryRetrievalParameters" :: NullOrUndefined (InventoryRetrievalJobDescription) , "JobOutputPath" :: NullOrUndefined (String) , "SelectParameters" :: NullOrUndefined (SelectParameters) , "OutputLocation" :: NullOrUndefined (OutputLocation) } ) -> GlacierJobDescription
newGlacierJobDescription'  customize = (GlacierJobDescription <<< customize) { "Action": (NullOrUndefined Nothing), "ArchiveId": (NullOrUndefined Nothing), "ArchiveSHA256TreeHash": (NullOrUndefined Nothing), "ArchiveSizeInBytes": (NullOrUndefined Nothing), "Completed": (NullOrUndefined Nothing), "CompletionDate": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "InventoryRetrievalParameters": (NullOrUndefined Nothing), "InventorySizeInBytes": (NullOrUndefined Nothing), "JobDescription": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobOutputPath": (NullOrUndefined Nothing), "OutputLocation": (NullOrUndefined Nothing), "RetrievalByteRange": (NullOrUndefined Nothing), "SHA256TreeHash": (NullOrUndefined Nothing), "SNSTopic": (NullOrUndefined Nothing), "SelectParameters": (NullOrUndefined Nothing), "StatusCode": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing) }



-- | <p>Contains information about a grant.</p>
newtype Grant = Grant 
  { "Grantee" :: NullOrUndefined (Grantee)
  , "Permission" :: NullOrUndefined (Permission)
  }
derive instance newtypeGrant :: Newtype Grant _
derive instance repGenericGrant :: Generic Grant _
instance showGrant :: Show Grant where show = genericShow
instance decodeGrant :: Decode Grant where decode = genericDecode options
instance encodeGrant :: Encode Grant where encode = genericEncode options

-- | Constructs Grant from required parameters
newGrant :: Grant
newGrant  = Grant { "Grantee": (NullOrUndefined Nothing), "Permission": (NullOrUndefined Nothing) }

-- | Constructs Grant's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrant' :: ( { "Grantee" :: NullOrUndefined (Grantee) , "Permission" :: NullOrUndefined (Permission) } -> {"Grantee" :: NullOrUndefined (Grantee) , "Permission" :: NullOrUndefined (Permission) } ) -> Grant
newGrant'  customize = (Grant <<< customize) { "Grantee": (NullOrUndefined Nothing), "Permission": (NullOrUndefined Nothing) }



-- | <p>Contains information about the grantee.</p>
newtype Grantee = Grantee 
  { "Type" :: (Type)
  , "DisplayName" :: NullOrUndefined (String)
  , "URI" :: NullOrUndefined (String)
  , "ID" :: NullOrUndefined (String)
  , "EmailAddress" :: NullOrUndefined (String)
  }
derive instance newtypeGrantee :: Newtype Grantee _
derive instance repGenericGrantee :: Generic Grantee _
instance showGrantee :: Show Grantee where show = genericShow
instance decodeGrantee :: Decode Grantee where decode = genericDecode options
instance encodeGrantee :: Encode Grantee where encode = genericEncode options

-- | Constructs Grantee from required parameters
newGrantee :: Type -> Grantee
newGrantee _Type = Grantee { "Type": _Type, "DisplayName": (NullOrUndefined Nothing), "EmailAddress": (NullOrUndefined Nothing), "ID": (NullOrUndefined Nothing), "URI": (NullOrUndefined Nothing) }

-- | Constructs Grantee's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGrantee' :: Type -> ( { "Type" :: (Type) , "DisplayName" :: NullOrUndefined (String) , "URI" :: NullOrUndefined (String) , "ID" :: NullOrUndefined (String) , "EmailAddress" :: NullOrUndefined (String) } -> {"Type" :: (Type) , "DisplayName" :: NullOrUndefined (String) , "URI" :: NullOrUndefined (String) , "ID" :: NullOrUndefined (String) , "EmailAddress" :: NullOrUndefined (String) } ) -> Grantee
newGrantee' _Type customize = (Grantee <<< customize) { "Type": _Type, "DisplayName": (NullOrUndefined Nothing), "EmailAddress": (NullOrUndefined Nothing), "ID": (NullOrUndefined Nothing), "URI": (NullOrUndefined Nothing) }



-- | <p>Provides options for initiating an Amazon Glacier job.</p>
newtype InitiateJobInput = InitiateJobInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "jobParameters" :: NullOrUndefined (JobParameters)
  }
derive instance newtypeInitiateJobInput :: Newtype InitiateJobInput _
derive instance repGenericInitiateJobInput :: Generic InitiateJobInput _
instance showInitiateJobInput :: Show InitiateJobInput where show = genericShow
instance decodeInitiateJobInput :: Decode InitiateJobInput where decode = genericDecode options
instance encodeInitiateJobInput :: Encode InitiateJobInput where encode = genericEncode options

-- | Constructs InitiateJobInput from required parameters
newInitiateJobInput :: String -> String -> InitiateJobInput
newInitiateJobInput _accountId _vaultName = InitiateJobInput { "accountId": _accountId, "vaultName": _vaultName, "jobParameters": (NullOrUndefined Nothing) }

-- | Constructs InitiateJobInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateJobInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "jobParameters" :: NullOrUndefined (JobParameters) } -> {"accountId" :: (String) , "vaultName" :: (String) , "jobParameters" :: NullOrUndefined (JobParameters) } ) -> InitiateJobInput
newInitiateJobInput' _accountId _vaultName customize = (InitiateJobInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "jobParameters": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype InitiateJobOutput = InitiateJobOutput 
  { "location" :: NullOrUndefined (String)
  , "jobId" :: NullOrUndefined (String)
  , "jobOutputPath" :: NullOrUndefined (String)
  }
derive instance newtypeInitiateJobOutput :: Newtype InitiateJobOutput _
derive instance repGenericInitiateJobOutput :: Generic InitiateJobOutput _
instance showInitiateJobOutput :: Show InitiateJobOutput where show = genericShow
instance decodeInitiateJobOutput :: Decode InitiateJobOutput where decode = genericDecode options
instance encodeInitiateJobOutput :: Encode InitiateJobOutput where encode = genericEncode options

-- | Constructs InitiateJobOutput from required parameters
newInitiateJobOutput :: InitiateJobOutput
newInitiateJobOutput  = InitiateJobOutput { "jobId": (NullOrUndefined Nothing), "jobOutputPath": (NullOrUndefined Nothing), "location": (NullOrUndefined Nothing) }

-- | Constructs InitiateJobOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateJobOutput' :: ( { "location" :: NullOrUndefined (String) , "jobId" :: NullOrUndefined (String) , "jobOutputPath" :: NullOrUndefined (String) } -> {"location" :: NullOrUndefined (String) , "jobId" :: NullOrUndefined (String) , "jobOutputPath" :: NullOrUndefined (String) } ) -> InitiateJobOutput
newInitiateJobOutput'  customize = (InitiateJobOutput <<< customize) { "jobId": (NullOrUndefined Nothing), "jobOutputPath": (NullOrUndefined Nothing), "location": (NullOrUndefined Nothing) }



-- | <p>Provides options for initiating a multipart upload to an Amazon Glacier vault.</p>
newtype InitiateMultipartUploadInput = InitiateMultipartUploadInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "archiveDescription" :: NullOrUndefined (String)
  , "partSize" :: NullOrUndefined (String)
  }
derive instance newtypeInitiateMultipartUploadInput :: Newtype InitiateMultipartUploadInput _
derive instance repGenericInitiateMultipartUploadInput :: Generic InitiateMultipartUploadInput _
instance showInitiateMultipartUploadInput :: Show InitiateMultipartUploadInput where show = genericShow
instance decodeInitiateMultipartUploadInput :: Decode InitiateMultipartUploadInput where decode = genericDecode options
instance encodeInitiateMultipartUploadInput :: Encode InitiateMultipartUploadInput where encode = genericEncode options

-- | Constructs InitiateMultipartUploadInput from required parameters
newInitiateMultipartUploadInput :: String -> String -> InitiateMultipartUploadInput
newInitiateMultipartUploadInput _accountId _vaultName = InitiateMultipartUploadInput { "accountId": _accountId, "vaultName": _vaultName, "archiveDescription": (NullOrUndefined Nothing), "partSize": (NullOrUndefined Nothing) }

-- | Constructs InitiateMultipartUploadInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateMultipartUploadInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "archiveDescription" :: NullOrUndefined (String) , "partSize" :: NullOrUndefined (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "archiveDescription" :: NullOrUndefined (String) , "partSize" :: NullOrUndefined (String) } ) -> InitiateMultipartUploadInput
newInitiateMultipartUploadInput' _accountId _vaultName customize = (InitiateMultipartUploadInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "archiveDescription": (NullOrUndefined Nothing), "partSize": (NullOrUndefined Nothing) }



-- | <p>The Amazon Glacier response to your request.</p>
newtype InitiateMultipartUploadOutput = InitiateMultipartUploadOutput 
  { "location" :: NullOrUndefined (String)
  , "uploadId" :: NullOrUndefined (String)
  }
derive instance newtypeInitiateMultipartUploadOutput :: Newtype InitiateMultipartUploadOutput _
derive instance repGenericInitiateMultipartUploadOutput :: Generic InitiateMultipartUploadOutput _
instance showInitiateMultipartUploadOutput :: Show InitiateMultipartUploadOutput where show = genericShow
instance decodeInitiateMultipartUploadOutput :: Decode InitiateMultipartUploadOutput where decode = genericDecode options
instance encodeInitiateMultipartUploadOutput :: Encode InitiateMultipartUploadOutput where encode = genericEncode options

-- | Constructs InitiateMultipartUploadOutput from required parameters
newInitiateMultipartUploadOutput :: InitiateMultipartUploadOutput
newInitiateMultipartUploadOutput  = InitiateMultipartUploadOutput { "location": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }

-- | Constructs InitiateMultipartUploadOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateMultipartUploadOutput' :: ( { "location" :: NullOrUndefined (String) , "uploadId" :: NullOrUndefined (String) } -> {"location" :: NullOrUndefined (String) , "uploadId" :: NullOrUndefined (String) } ) -> InitiateMultipartUploadOutput
newInitiateMultipartUploadOutput'  customize = (InitiateMultipartUploadOutput <<< customize) { "location": (NullOrUndefined Nothing), "uploadId": (NullOrUndefined Nothing) }



-- | <p>The input values for <code>InitiateVaultLock</code>.</p>
newtype InitiateVaultLockInput = InitiateVaultLockInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "policy" :: NullOrUndefined (VaultLockPolicy)
  }
derive instance newtypeInitiateVaultLockInput :: Newtype InitiateVaultLockInput _
derive instance repGenericInitiateVaultLockInput :: Generic InitiateVaultLockInput _
instance showInitiateVaultLockInput :: Show InitiateVaultLockInput where show = genericShow
instance decodeInitiateVaultLockInput :: Decode InitiateVaultLockInput where decode = genericDecode options
instance encodeInitiateVaultLockInput :: Encode InitiateVaultLockInput where encode = genericEncode options

-- | Constructs InitiateVaultLockInput from required parameters
newInitiateVaultLockInput :: String -> String -> InitiateVaultLockInput
newInitiateVaultLockInput _accountId _vaultName = InitiateVaultLockInput { "accountId": _accountId, "vaultName": _vaultName, "policy": (NullOrUndefined Nothing) }

-- | Constructs InitiateVaultLockInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateVaultLockInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "policy" :: NullOrUndefined (VaultLockPolicy) } -> {"accountId" :: (String) , "vaultName" :: (String) , "policy" :: NullOrUndefined (VaultLockPolicy) } ) -> InitiateVaultLockInput
newInitiateVaultLockInput' _accountId _vaultName customize = (InitiateVaultLockInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "policy": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype InitiateVaultLockOutput = InitiateVaultLockOutput 
  { "lockId" :: NullOrUndefined (String)
  }
derive instance newtypeInitiateVaultLockOutput :: Newtype InitiateVaultLockOutput _
derive instance repGenericInitiateVaultLockOutput :: Generic InitiateVaultLockOutput _
instance showInitiateVaultLockOutput :: Show InitiateVaultLockOutput where show = genericShow
instance decodeInitiateVaultLockOutput :: Decode InitiateVaultLockOutput where decode = genericDecode options
instance encodeInitiateVaultLockOutput :: Encode InitiateVaultLockOutput where encode = genericEncode options

-- | Constructs InitiateVaultLockOutput from required parameters
newInitiateVaultLockOutput :: InitiateVaultLockOutput
newInitiateVaultLockOutput  = InitiateVaultLockOutput { "lockId": (NullOrUndefined Nothing) }

-- | Constructs InitiateVaultLockOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitiateVaultLockOutput' :: ( { "lockId" :: NullOrUndefined (String) } -> {"lockId" :: NullOrUndefined (String) } ) -> InitiateVaultLockOutput
newInitiateVaultLockOutput'  customize = (InitiateVaultLockOutput <<< customize) { "lockId": (NullOrUndefined Nothing) }



-- | <p>Describes how the archive is serialized.</p>
newtype InputSerialization = InputSerialization 
  { "csv" :: NullOrUndefined (CSVInput)
  }
derive instance newtypeInputSerialization :: Newtype InputSerialization _
derive instance repGenericInputSerialization :: Generic InputSerialization _
instance showInputSerialization :: Show InputSerialization where show = genericShow
instance decodeInputSerialization :: Decode InputSerialization where decode = genericDecode options
instance encodeInputSerialization :: Encode InputSerialization where encode = genericEncode options

-- | Constructs InputSerialization from required parameters
newInputSerialization :: InputSerialization
newInputSerialization  = InputSerialization { "csv": (NullOrUndefined Nothing) }

-- | Constructs InputSerialization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInputSerialization' :: ( { "csv" :: NullOrUndefined (CSVInput) } -> {"csv" :: NullOrUndefined (CSVInput) } ) -> InputSerialization
newInputSerialization'  customize = (InputSerialization <<< customize) { "csv": (NullOrUndefined Nothing) }



-- | <p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>
newtype InsufficientCapacityException = InsufficientCapacityException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeInsufficientCapacityException :: Newtype InsufficientCapacityException _
derive instance repGenericInsufficientCapacityException :: Generic InsufficientCapacityException _
instance showInsufficientCapacityException :: Show InsufficientCapacityException where show = genericShow
instance decodeInsufficientCapacityException :: Decode InsufficientCapacityException where decode = genericDecode options
instance encodeInsufficientCapacityException :: Encode InsufficientCapacityException where encode = genericEncode options

-- | Constructs InsufficientCapacityException from required parameters
newInsufficientCapacityException :: InsufficientCapacityException
newInsufficientCapacityException  = InsufficientCapacityException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs InsufficientCapacityException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInsufficientCapacityException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> InsufficientCapacityException
newInsufficientCapacityException'  customize = (InsufficientCapacityException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p>Returned if a parameter of the request is incorrectly specified.</p>
newtype InvalidParameterValueException = InvalidParameterValueException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidParameterValueException :: Newtype InvalidParameterValueException _
derive instance repGenericInvalidParameterValueException :: Generic InvalidParameterValueException _
instance showInvalidParameterValueException :: Show InvalidParameterValueException where show = genericShow
instance decodeInvalidParameterValueException :: Decode InvalidParameterValueException where decode = genericDecode options
instance encodeInvalidParameterValueException :: Encode InvalidParameterValueException where encode = genericEncode options

-- | Constructs InvalidParameterValueException from required parameters
newInvalidParameterValueException :: InvalidParameterValueException
newInvalidParameterValueException  = InvalidParameterValueException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterValueException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterValueException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> InvalidParameterValueException
newInvalidParameterValueException'  customize = (InvalidParameterValueException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p>Describes the options for a range inventory retrieval job.</p>
newtype InventoryRetrievalJobDescription = InventoryRetrievalJobDescription 
  { "Format" :: NullOrUndefined (String)
  , "StartDate" :: NullOrUndefined (DateTime)
  , "EndDate" :: NullOrUndefined (DateTime)
  , "Limit" :: NullOrUndefined (String)
  , "Marker" :: NullOrUndefined (String)
  }
derive instance newtypeInventoryRetrievalJobDescription :: Newtype InventoryRetrievalJobDescription _
derive instance repGenericInventoryRetrievalJobDescription :: Generic InventoryRetrievalJobDescription _
instance showInventoryRetrievalJobDescription :: Show InventoryRetrievalJobDescription where show = genericShow
instance decodeInventoryRetrievalJobDescription :: Decode InventoryRetrievalJobDescription where decode = genericDecode options
instance encodeInventoryRetrievalJobDescription :: Encode InventoryRetrievalJobDescription where encode = genericEncode options

-- | Constructs InventoryRetrievalJobDescription from required parameters
newInventoryRetrievalJobDescription :: InventoryRetrievalJobDescription
newInventoryRetrievalJobDescription  = InventoryRetrievalJobDescription { "EndDate": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "StartDate": (NullOrUndefined Nothing) }

-- | Constructs InventoryRetrievalJobDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInventoryRetrievalJobDescription' :: ( { "Format" :: NullOrUndefined (String) , "StartDate" :: NullOrUndefined (DateTime) , "EndDate" :: NullOrUndefined (DateTime) , "Limit" :: NullOrUndefined (String) , "Marker" :: NullOrUndefined (String) } -> {"Format" :: NullOrUndefined (String) , "StartDate" :: NullOrUndefined (DateTime) , "EndDate" :: NullOrUndefined (DateTime) , "Limit" :: NullOrUndefined (String) , "Marker" :: NullOrUndefined (String) } ) -> InventoryRetrievalJobDescription
newInventoryRetrievalJobDescription'  customize = (InventoryRetrievalJobDescription <<< customize) { "EndDate": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "StartDate": (NullOrUndefined Nothing) }



-- | <p>Provides options for specifying a range inventory retrieval job.</p>
newtype InventoryRetrievalJobInput = InventoryRetrievalJobInput 
  { "StartDate" :: NullOrUndefined (String)
  , "EndDate" :: NullOrUndefined (String)
  , "Limit" :: NullOrUndefined (String)
  , "Marker" :: NullOrUndefined (String)
  }
derive instance newtypeInventoryRetrievalJobInput :: Newtype InventoryRetrievalJobInput _
derive instance repGenericInventoryRetrievalJobInput :: Generic InventoryRetrievalJobInput _
instance showInventoryRetrievalJobInput :: Show InventoryRetrievalJobInput where show = genericShow
instance decodeInventoryRetrievalJobInput :: Decode InventoryRetrievalJobInput where decode = genericDecode options
instance encodeInventoryRetrievalJobInput :: Encode InventoryRetrievalJobInput where encode = genericEncode options

-- | Constructs InventoryRetrievalJobInput from required parameters
newInventoryRetrievalJobInput :: InventoryRetrievalJobInput
newInventoryRetrievalJobInput  = InventoryRetrievalJobInput { "EndDate": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "StartDate": (NullOrUndefined Nothing) }

-- | Constructs InventoryRetrievalJobInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInventoryRetrievalJobInput' :: ( { "StartDate" :: NullOrUndefined (String) , "EndDate" :: NullOrUndefined (String) , "Limit" :: NullOrUndefined (String) , "Marker" :: NullOrUndefined (String) } -> {"StartDate" :: NullOrUndefined (String) , "EndDate" :: NullOrUndefined (String) , "Limit" :: NullOrUndefined (String) , "Marker" :: NullOrUndefined (String) } ) -> InventoryRetrievalJobInput
newInventoryRetrievalJobInput'  customize = (InventoryRetrievalJobInput <<< customize) { "EndDate": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "StartDate": (NullOrUndefined Nothing) }



newtype JobList = JobList (Array GlacierJobDescription)
derive instance newtypeJobList :: Newtype JobList _
derive instance repGenericJobList :: Generic JobList _
instance showJobList :: Show JobList where show = genericShow
instance decodeJobList :: Decode JobList where decode = genericDecode options
instance encodeJobList :: Encode JobList where encode = genericEncode options



-- | <p>Provides options for defining a job.</p>
newtype JobParameters = JobParameters 
  { "Format" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  , "ArchiveId" :: NullOrUndefined (String)
  , "Description" :: NullOrUndefined (String)
  , "SNSTopic" :: NullOrUndefined (String)
  , "RetrievalByteRange" :: NullOrUndefined (String)
  , "Tier" :: NullOrUndefined (String)
  , "InventoryRetrievalParameters" :: NullOrUndefined (InventoryRetrievalJobInput)
  , "SelectParameters" :: NullOrUndefined (SelectParameters)
  , "OutputLocation" :: NullOrUndefined (OutputLocation)
  }
derive instance newtypeJobParameters :: Newtype JobParameters _
derive instance repGenericJobParameters :: Generic JobParameters _
instance showJobParameters :: Show JobParameters where show = genericShow
instance decodeJobParameters :: Decode JobParameters where decode = genericDecode options
instance encodeJobParameters :: Encode JobParameters where encode = genericEncode options

-- | Constructs JobParameters from required parameters
newJobParameters :: JobParameters
newJobParameters  = JobParameters { "ArchiveId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "InventoryRetrievalParameters": (NullOrUndefined Nothing), "OutputLocation": (NullOrUndefined Nothing), "RetrievalByteRange": (NullOrUndefined Nothing), "SNSTopic": (NullOrUndefined Nothing), "SelectParameters": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs JobParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobParameters' :: ( { "Format" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "ArchiveId" :: NullOrUndefined (String) , "Description" :: NullOrUndefined (String) , "SNSTopic" :: NullOrUndefined (String) , "RetrievalByteRange" :: NullOrUndefined (String) , "Tier" :: NullOrUndefined (String) , "InventoryRetrievalParameters" :: NullOrUndefined (InventoryRetrievalJobInput) , "SelectParameters" :: NullOrUndefined (SelectParameters) , "OutputLocation" :: NullOrUndefined (OutputLocation) } -> {"Format" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "ArchiveId" :: NullOrUndefined (String) , "Description" :: NullOrUndefined (String) , "SNSTopic" :: NullOrUndefined (String) , "RetrievalByteRange" :: NullOrUndefined (String) , "Tier" :: NullOrUndefined (String) , "InventoryRetrievalParameters" :: NullOrUndefined (InventoryRetrievalJobInput) , "SelectParameters" :: NullOrUndefined (SelectParameters) , "OutputLocation" :: NullOrUndefined (OutputLocation) } ) -> JobParameters
newJobParameters'  customize = (JobParameters <<< customize) { "ArchiveId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "InventoryRetrievalParameters": (NullOrUndefined Nothing), "OutputLocation": (NullOrUndefined Nothing), "RetrievalByteRange": (NullOrUndefined Nothing), "SNSTopic": (NullOrUndefined Nothing), "SelectParameters": (NullOrUndefined Nothing), "Tier": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | <p>Returned if the request results in a vault or account limit being exceeded.</p>
newtype LimitExceededException = LimitExceededException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p>Provides options for retrieving a job list for an Amazon Glacier vault.</p>
newtype ListJobsInput = ListJobsInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "limit" :: NullOrUndefined (String)
  , "marker" :: NullOrUndefined (String)
  , "statuscode" :: NullOrUndefined (String)
  , "completed" :: NullOrUndefined (String)
  }
derive instance newtypeListJobsInput :: Newtype ListJobsInput _
derive instance repGenericListJobsInput :: Generic ListJobsInput _
instance showListJobsInput :: Show ListJobsInput where show = genericShow
instance decodeListJobsInput :: Decode ListJobsInput where decode = genericDecode options
instance encodeListJobsInput :: Encode ListJobsInput where encode = genericEncode options

-- | Constructs ListJobsInput from required parameters
newListJobsInput :: String -> String -> ListJobsInput
newListJobsInput _accountId _vaultName = ListJobsInput { "accountId": _accountId, "vaultName": _vaultName, "completed": (NullOrUndefined Nothing), "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing), "statuscode": (NullOrUndefined Nothing) }

-- | Constructs ListJobsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "limit" :: NullOrUndefined (String) , "marker" :: NullOrUndefined (String) , "statuscode" :: NullOrUndefined (String) , "completed" :: NullOrUndefined (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "limit" :: NullOrUndefined (String) , "marker" :: NullOrUndefined (String) , "statuscode" :: NullOrUndefined (String) , "completed" :: NullOrUndefined (String) } ) -> ListJobsInput
newListJobsInput' _accountId _vaultName customize = (ListJobsInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "completed": (NullOrUndefined Nothing), "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing), "statuscode": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype ListJobsOutput = ListJobsOutput 
  { "JobList" :: NullOrUndefined (JobList)
  , "Marker" :: NullOrUndefined (String)
  }
derive instance newtypeListJobsOutput :: Newtype ListJobsOutput _
derive instance repGenericListJobsOutput :: Generic ListJobsOutput _
instance showListJobsOutput :: Show ListJobsOutput where show = genericShow
instance decodeListJobsOutput :: Decode ListJobsOutput where decode = genericDecode options
instance encodeListJobsOutput :: Encode ListJobsOutput where encode = genericEncode options

-- | Constructs ListJobsOutput from required parameters
newListJobsOutput :: ListJobsOutput
newListJobsOutput  = ListJobsOutput { "JobList": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListJobsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsOutput' :: ( { "JobList" :: NullOrUndefined (JobList) , "Marker" :: NullOrUndefined (String) } -> {"JobList" :: NullOrUndefined (JobList) , "Marker" :: NullOrUndefined (String) } ) -> ListJobsOutput
newListJobsOutput'  customize = (ListJobsOutput <<< customize) { "JobList": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>Provides options for retrieving list of in-progress multipart uploads for an Amazon Glacier vault.</p>
newtype ListMultipartUploadsInput = ListMultipartUploadsInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "marker" :: NullOrUndefined (String)
  , "limit" :: NullOrUndefined (String)
  }
derive instance newtypeListMultipartUploadsInput :: Newtype ListMultipartUploadsInput _
derive instance repGenericListMultipartUploadsInput :: Generic ListMultipartUploadsInput _
instance showListMultipartUploadsInput :: Show ListMultipartUploadsInput where show = genericShow
instance decodeListMultipartUploadsInput :: Decode ListMultipartUploadsInput where decode = genericDecode options
instance encodeListMultipartUploadsInput :: Encode ListMultipartUploadsInput where encode = genericEncode options

-- | Constructs ListMultipartUploadsInput from required parameters
newListMultipartUploadsInput :: String -> String -> ListMultipartUploadsInput
newListMultipartUploadsInput _accountId _vaultName = ListMultipartUploadsInput { "accountId": _accountId, "vaultName": _vaultName, "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing) }

-- | Constructs ListMultipartUploadsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMultipartUploadsInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "marker" :: NullOrUndefined (String) , "limit" :: NullOrUndefined (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "marker" :: NullOrUndefined (String) , "limit" :: NullOrUndefined (String) } ) -> ListMultipartUploadsInput
newListMultipartUploadsInput' _accountId _vaultName customize = (ListMultipartUploadsInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype ListMultipartUploadsOutput = ListMultipartUploadsOutput 
  { "UploadsList" :: NullOrUndefined (UploadsList)
  , "Marker" :: NullOrUndefined (String)
  }
derive instance newtypeListMultipartUploadsOutput :: Newtype ListMultipartUploadsOutput _
derive instance repGenericListMultipartUploadsOutput :: Generic ListMultipartUploadsOutput _
instance showListMultipartUploadsOutput :: Show ListMultipartUploadsOutput where show = genericShow
instance decodeListMultipartUploadsOutput :: Decode ListMultipartUploadsOutput where decode = genericDecode options
instance encodeListMultipartUploadsOutput :: Encode ListMultipartUploadsOutput where encode = genericEncode options

-- | Constructs ListMultipartUploadsOutput from required parameters
newListMultipartUploadsOutput :: ListMultipartUploadsOutput
newListMultipartUploadsOutput  = ListMultipartUploadsOutput { "Marker": (NullOrUndefined Nothing), "UploadsList": (NullOrUndefined Nothing) }

-- | Constructs ListMultipartUploadsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListMultipartUploadsOutput' :: ( { "UploadsList" :: NullOrUndefined (UploadsList) , "Marker" :: NullOrUndefined (String) } -> {"UploadsList" :: NullOrUndefined (UploadsList) , "Marker" :: NullOrUndefined (String) } ) -> ListMultipartUploadsOutput
newListMultipartUploadsOutput'  customize = (ListMultipartUploadsOutput <<< customize) { "Marker": (NullOrUndefined Nothing), "UploadsList": (NullOrUndefined Nothing) }



-- | <p>Provides options for retrieving a list of parts of an archive that have been uploaded in a specific multipart upload.</p>
newtype ListPartsInput = ListPartsInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "uploadId" :: (String)
  , "marker" :: NullOrUndefined (String)
  , "limit" :: NullOrUndefined (String)
  }
derive instance newtypeListPartsInput :: Newtype ListPartsInput _
derive instance repGenericListPartsInput :: Generic ListPartsInput _
instance showListPartsInput :: Show ListPartsInput where show = genericShow
instance decodeListPartsInput :: Decode ListPartsInput where decode = genericDecode options
instance encodeListPartsInput :: Encode ListPartsInput where encode = genericEncode options

-- | Constructs ListPartsInput from required parameters
newListPartsInput :: String -> String -> String -> ListPartsInput
newListPartsInput _accountId _uploadId _vaultName = ListPartsInput { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName, "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing) }

-- | Constructs ListPartsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPartsInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) , "marker" :: NullOrUndefined (String) , "limit" :: NullOrUndefined (String) } -> {"accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) , "marker" :: NullOrUndefined (String) , "limit" :: NullOrUndefined (String) } ) -> ListPartsInput
newListPartsInput' _accountId _uploadId _vaultName customize = (ListPartsInput <<< customize) { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName, "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype ListPartsOutput = ListPartsOutput 
  { "MultipartUploadId" :: NullOrUndefined (String)
  , "VaultARN" :: NullOrUndefined (String)
  , "ArchiveDescription" :: NullOrUndefined (String)
  , "PartSizeInBytes" :: NullOrUndefined (Number)
  , "CreationDate" :: NullOrUndefined (String)
  , "Parts" :: NullOrUndefined (PartList)
  , "Marker" :: NullOrUndefined (String)
  }
derive instance newtypeListPartsOutput :: Newtype ListPartsOutput _
derive instance repGenericListPartsOutput :: Generic ListPartsOutput _
instance showListPartsOutput :: Show ListPartsOutput where show = genericShow
instance decodeListPartsOutput :: Decode ListPartsOutput where decode = genericDecode options
instance encodeListPartsOutput :: Encode ListPartsOutput where encode = genericEncode options

-- | Constructs ListPartsOutput from required parameters
newListPartsOutput :: ListPartsOutput
newListPartsOutput  = ListPartsOutput { "ArchiveDescription": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MultipartUploadId": (NullOrUndefined Nothing), "PartSizeInBytes": (NullOrUndefined Nothing), "Parts": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing) }

-- | Constructs ListPartsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPartsOutput' :: ( { "MultipartUploadId" :: NullOrUndefined (String) , "VaultARN" :: NullOrUndefined (String) , "ArchiveDescription" :: NullOrUndefined (String) , "PartSizeInBytes" :: NullOrUndefined (Number) , "CreationDate" :: NullOrUndefined (String) , "Parts" :: NullOrUndefined (PartList) , "Marker" :: NullOrUndefined (String) } -> {"MultipartUploadId" :: NullOrUndefined (String) , "VaultARN" :: NullOrUndefined (String) , "ArchiveDescription" :: NullOrUndefined (String) , "PartSizeInBytes" :: NullOrUndefined (Number) , "CreationDate" :: NullOrUndefined (String) , "Parts" :: NullOrUndefined (PartList) , "Marker" :: NullOrUndefined (String) } ) -> ListPartsOutput
newListPartsOutput'  customize = (ListPartsOutput <<< customize) { "ArchiveDescription": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MultipartUploadId": (NullOrUndefined Nothing), "PartSizeInBytes": (NullOrUndefined Nothing), "Parts": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing) }



newtype ListProvisionedCapacityInput = ListProvisionedCapacityInput 
  { "accountId" :: (String)
  }
derive instance newtypeListProvisionedCapacityInput :: Newtype ListProvisionedCapacityInput _
derive instance repGenericListProvisionedCapacityInput :: Generic ListProvisionedCapacityInput _
instance showListProvisionedCapacityInput :: Show ListProvisionedCapacityInput where show = genericShow
instance decodeListProvisionedCapacityInput :: Decode ListProvisionedCapacityInput where decode = genericDecode options
instance encodeListProvisionedCapacityInput :: Encode ListProvisionedCapacityInput where encode = genericEncode options

-- | Constructs ListProvisionedCapacityInput from required parameters
newListProvisionedCapacityInput :: String -> ListProvisionedCapacityInput
newListProvisionedCapacityInput _accountId = ListProvisionedCapacityInput { "accountId": _accountId }

-- | Constructs ListProvisionedCapacityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProvisionedCapacityInput' :: String -> ( { "accountId" :: (String) } -> {"accountId" :: (String) } ) -> ListProvisionedCapacityInput
newListProvisionedCapacityInput' _accountId customize = (ListProvisionedCapacityInput <<< customize) { "accountId": _accountId }



newtype ListProvisionedCapacityOutput = ListProvisionedCapacityOutput 
  { "ProvisionedCapacityList" :: NullOrUndefined (ProvisionedCapacityList)
  }
derive instance newtypeListProvisionedCapacityOutput :: Newtype ListProvisionedCapacityOutput _
derive instance repGenericListProvisionedCapacityOutput :: Generic ListProvisionedCapacityOutput _
instance showListProvisionedCapacityOutput :: Show ListProvisionedCapacityOutput where show = genericShow
instance decodeListProvisionedCapacityOutput :: Decode ListProvisionedCapacityOutput where decode = genericDecode options
instance encodeListProvisionedCapacityOutput :: Encode ListProvisionedCapacityOutput where encode = genericEncode options

-- | Constructs ListProvisionedCapacityOutput from required parameters
newListProvisionedCapacityOutput :: ListProvisionedCapacityOutput
newListProvisionedCapacityOutput  = ListProvisionedCapacityOutput { "ProvisionedCapacityList": (NullOrUndefined Nothing) }

-- | Constructs ListProvisionedCapacityOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListProvisionedCapacityOutput' :: ( { "ProvisionedCapacityList" :: NullOrUndefined (ProvisionedCapacityList) } -> {"ProvisionedCapacityList" :: NullOrUndefined (ProvisionedCapacityList) } ) -> ListProvisionedCapacityOutput
newListProvisionedCapacityOutput'  customize = (ListProvisionedCapacityOutput <<< customize) { "ProvisionedCapacityList": (NullOrUndefined Nothing) }



-- | <p>The input value for <code>ListTagsForVaultInput</code>.</p>
newtype ListTagsForVaultInput = ListTagsForVaultInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  }
derive instance newtypeListTagsForVaultInput :: Newtype ListTagsForVaultInput _
derive instance repGenericListTagsForVaultInput :: Generic ListTagsForVaultInput _
instance showListTagsForVaultInput :: Show ListTagsForVaultInput where show = genericShow
instance decodeListTagsForVaultInput :: Decode ListTagsForVaultInput where decode = genericDecode options
instance encodeListTagsForVaultInput :: Encode ListTagsForVaultInput where encode = genericEncode options

-- | Constructs ListTagsForVaultInput from required parameters
newListTagsForVaultInput :: String -> String -> ListTagsForVaultInput
newListTagsForVaultInput _accountId _vaultName = ListTagsForVaultInput { "accountId": _accountId, "vaultName": _vaultName }

-- | Constructs ListTagsForVaultInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForVaultInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) } -> {"accountId" :: (String) , "vaultName" :: (String) } ) -> ListTagsForVaultInput
newListTagsForVaultInput' _accountId _vaultName customize = (ListTagsForVaultInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype ListTagsForVaultOutput = ListTagsForVaultOutput 
  { "Tags" :: NullOrUndefined (TagMap)
  }
derive instance newtypeListTagsForVaultOutput :: Newtype ListTagsForVaultOutput _
derive instance repGenericListTagsForVaultOutput :: Generic ListTagsForVaultOutput _
instance showListTagsForVaultOutput :: Show ListTagsForVaultOutput where show = genericShow
instance decodeListTagsForVaultOutput :: Decode ListTagsForVaultOutput where decode = genericDecode options
instance encodeListTagsForVaultOutput :: Encode ListTagsForVaultOutput where encode = genericEncode options

-- | Constructs ListTagsForVaultOutput from required parameters
newListTagsForVaultOutput :: ListTagsForVaultOutput
newListTagsForVaultOutput  = ListTagsForVaultOutput { "Tags": (NullOrUndefined Nothing) }

-- | Constructs ListTagsForVaultOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForVaultOutput' :: ( { "Tags" :: NullOrUndefined (TagMap) } -> {"Tags" :: NullOrUndefined (TagMap) } ) -> ListTagsForVaultOutput
newListTagsForVaultOutput'  customize = (ListTagsForVaultOutput <<< customize) { "Tags": (NullOrUndefined Nothing) }



-- | <p>Provides options to retrieve the vault list owned by the calling user's account. The list provides metadata information for each vault.</p>
newtype ListVaultsInput = ListVaultsInput 
  { "accountId" :: (String)
  , "marker" :: NullOrUndefined (String)
  , "limit" :: NullOrUndefined (String)
  }
derive instance newtypeListVaultsInput :: Newtype ListVaultsInput _
derive instance repGenericListVaultsInput :: Generic ListVaultsInput _
instance showListVaultsInput :: Show ListVaultsInput where show = genericShow
instance decodeListVaultsInput :: Decode ListVaultsInput where decode = genericDecode options
instance encodeListVaultsInput :: Encode ListVaultsInput where encode = genericEncode options

-- | Constructs ListVaultsInput from required parameters
newListVaultsInput :: String -> ListVaultsInput
newListVaultsInput _accountId = ListVaultsInput { "accountId": _accountId, "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing) }

-- | Constructs ListVaultsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVaultsInput' :: String -> ( { "accountId" :: (String) , "marker" :: NullOrUndefined (String) , "limit" :: NullOrUndefined (String) } -> {"accountId" :: (String) , "marker" :: NullOrUndefined (String) , "limit" :: NullOrUndefined (String) } ) -> ListVaultsInput
newListVaultsInput' _accountId customize = (ListVaultsInput <<< customize) { "accountId": _accountId, "limit": (NullOrUndefined Nothing), "marker": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype ListVaultsOutput = ListVaultsOutput 
  { "VaultList" :: NullOrUndefined (VaultList)
  , "Marker" :: NullOrUndefined (String)
  }
derive instance newtypeListVaultsOutput :: Newtype ListVaultsOutput _
derive instance repGenericListVaultsOutput :: Generic ListVaultsOutput _
instance showListVaultsOutput :: Show ListVaultsOutput where show = genericShow
instance decodeListVaultsOutput :: Decode ListVaultsOutput where decode = genericDecode options
instance encodeListVaultsOutput :: Encode ListVaultsOutput where encode = genericEncode options

-- | Constructs ListVaultsOutput from required parameters
newListVaultsOutput :: ListVaultsOutput
newListVaultsOutput  = ListVaultsOutput { "Marker": (NullOrUndefined Nothing), "VaultList": (NullOrUndefined Nothing) }

-- | Constructs ListVaultsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListVaultsOutput' :: ( { "VaultList" :: NullOrUndefined (VaultList) , "Marker" :: NullOrUndefined (String) } -> {"VaultList" :: NullOrUndefined (VaultList) , "Marker" :: NullOrUndefined (String) } ) -> ListVaultsOutput
newListVaultsOutput'  customize = (ListVaultsOutput <<< customize) { "Marker": (NullOrUndefined Nothing), "VaultList": (NullOrUndefined Nothing) }



-- | <p>Returned if a required header or parameter is missing from the request.</p>
newtype MissingParameterValueException = MissingParameterValueException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeMissingParameterValueException :: Newtype MissingParameterValueException _
derive instance repGenericMissingParameterValueException :: Generic MissingParameterValueException _
instance showMissingParameterValueException :: Show MissingParameterValueException where show = genericShow
instance decodeMissingParameterValueException :: Decode MissingParameterValueException where decode = genericDecode options
instance encodeMissingParameterValueException :: Encode MissingParameterValueException where encode = genericEncode options

-- | Constructs MissingParameterValueException from required parameters
newMissingParameterValueException :: MissingParameterValueException
newMissingParameterValueException  = MissingParameterValueException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs MissingParameterValueException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMissingParameterValueException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> MissingParameterValueException
newMissingParameterValueException'  customize = (MissingParameterValueException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



newtype NotificationEventList = NotificationEventList (Array String)
derive instance newtypeNotificationEventList :: Newtype NotificationEventList _
derive instance repGenericNotificationEventList :: Generic NotificationEventList _
instance showNotificationEventList :: Show NotificationEventList where show = genericShow
instance decodeNotificationEventList :: Decode NotificationEventList where decode = genericDecode options
instance encodeNotificationEventList :: Encode NotificationEventList where encode = genericEncode options



newtype NullableLong = NullableLong Number
derive instance newtypeNullableLong :: Newtype NullableLong _
derive instance repGenericNullableLong :: Generic NullableLong _
instance showNullableLong :: Show NullableLong where show = genericShow
instance decodeNullableLong :: Decode NullableLong where decode = genericDecode options
instance encodeNullableLong :: Encode NullableLong where encode = genericEncode options



-- | <p>Contains information about the location where the select job results are stored.</p>
newtype OutputLocation = OutputLocation 
  { "S3" :: NullOrUndefined (S3Location)
  }
derive instance newtypeOutputLocation :: Newtype OutputLocation _
derive instance repGenericOutputLocation :: Generic OutputLocation _
instance showOutputLocation :: Show OutputLocation where show = genericShow
instance decodeOutputLocation :: Decode OutputLocation where decode = genericDecode options
instance encodeOutputLocation :: Encode OutputLocation where encode = genericEncode options

-- | Constructs OutputLocation from required parameters
newOutputLocation :: OutputLocation
newOutputLocation  = OutputLocation { "S3": (NullOrUndefined Nothing) }

-- | Constructs OutputLocation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputLocation' :: ( { "S3" :: NullOrUndefined (S3Location) } -> {"S3" :: NullOrUndefined (S3Location) } ) -> OutputLocation
newOutputLocation'  customize = (OutputLocation <<< customize) { "S3": (NullOrUndefined Nothing) }



-- | <p>Describes how the select output is serialized.</p>
newtype OutputSerialization = OutputSerialization 
  { "csv" :: NullOrUndefined (CSVOutput)
  }
derive instance newtypeOutputSerialization :: Newtype OutputSerialization _
derive instance repGenericOutputSerialization :: Generic OutputSerialization _
instance showOutputSerialization :: Show OutputSerialization where show = genericShow
instance decodeOutputSerialization :: Decode OutputSerialization where decode = genericDecode options
instance encodeOutputSerialization :: Encode OutputSerialization where encode = genericEncode options

-- | Constructs OutputSerialization from required parameters
newOutputSerialization :: OutputSerialization
newOutputSerialization  = OutputSerialization { "csv": (NullOrUndefined Nothing) }

-- | Constructs OutputSerialization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOutputSerialization' :: ( { "csv" :: NullOrUndefined (CSVOutput) } -> {"csv" :: NullOrUndefined (CSVOutput) } ) -> OutputSerialization
newOutputSerialization'  customize = (OutputSerialization <<< customize) { "csv": (NullOrUndefined Nothing) }



newtype PartList = PartList (Array PartListElement)
derive instance newtypePartList :: Newtype PartList _
derive instance repGenericPartList :: Generic PartList _
instance showPartList :: Show PartList where show = genericShow
instance decodePartList :: Decode PartList where decode = genericDecode options
instance encodePartList :: Encode PartList where encode = genericEncode options



-- | <p>A list of the part sizes of the multipart upload.</p>
newtype PartListElement = PartListElement 
  { "RangeInBytes" :: NullOrUndefined (String)
  , "SHA256TreeHash" :: NullOrUndefined (String)
  }
derive instance newtypePartListElement :: Newtype PartListElement _
derive instance repGenericPartListElement :: Generic PartListElement _
instance showPartListElement :: Show PartListElement where show = genericShow
instance decodePartListElement :: Decode PartListElement where decode = genericDecode options
instance encodePartListElement :: Encode PartListElement where encode = genericEncode options

-- | Constructs PartListElement from required parameters
newPartListElement :: PartListElement
newPartListElement  = PartListElement { "RangeInBytes": (NullOrUndefined Nothing), "SHA256TreeHash": (NullOrUndefined Nothing) }

-- | Constructs PartListElement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPartListElement' :: ( { "RangeInBytes" :: NullOrUndefined (String) , "SHA256TreeHash" :: NullOrUndefined (String) } -> {"RangeInBytes" :: NullOrUndefined (String) , "SHA256TreeHash" :: NullOrUndefined (String) } ) -> PartListElement
newPartListElement'  customize = (PartListElement <<< customize) { "RangeInBytes": (NullOrUndefined Nothing), "SHA256TreeHash": (NullOrUndefined Nothing) }



newtype Permission = Permission String
derive instance newtypePermission :: Newtype Permission _
derive instance repGenericPermission :: Generic Permission _
instance showPermission :: Show Permission where show = genericShow
instance decodePermission :: Decode Permission where decode = genericDecode options
instance encodePermission :: Encode Permission where encode = genericEncode options



-- | <p>Returned if a retrieval job would exceed the current data policy's retrieval rate limit. For more information about data retrieval policies,</p>
newtype PolicyEnforcedException = PolicyEnforcedException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypePolicyEnforcedException :: Newtype PolicyEnforcedException _
derive instance repGenericPolicyEnforcedException :: Generic PolicyEnforcedException _
instance showPolicyEnforcedException :: Show PolicyEnforcedException where show = genericShow
instance decodePolicyEnforcedException :: Decode PolicyEnforcedException where decode = genericDecode options
instance encodePolicyEnforcedException :: Encode PolicyEnforcedException where encode = genericEncode options

-- | Constructs PolicyEnforcedException from required parameters
newPolicyEnforcedException :: PolicyEnforcedException
newPolicyEnforcedException  = PolicyEnforcedException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs PolicyEnforcedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyEnforcedException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> PolicyEnforcedException
newPolicyEnforcedException'  customize = (PolicyEnforcedException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p>The definition for a provisioned capacity unit.</p>
newtype ProvisionedCapacityDescription = ProvisionedCapacityDescription 
  { "CapacityId" :: NullOrUndefined (String)
  , "StartDate" :: NullOrUndefined (String)
  , "ExpirationDate" :: NullOrUndefined (String)
  }
derive instance newtypeProvisionedCapacityDescription :: Newtype ProvisionedCapacityDescription _
derive instance repGenericProvisionedCapacityDescription :: Generic ProvisionedCapacityDescription _
instance showProvisionedCapacityDescription :: Show ProvisionedCapacityDescription where show = genericShow
instance decodeProvisionedCapacityDescription :: Decode ProvisionedCapacityDescription where decode = genericDecode options
instance encodeProvisionedCapacityDescription :: Encode ProvisionedCapacityDescription where encode = genericEncode options

-- | Constructs ProvisionedCapacityDescription from required parameters
newProvisionedCapacityDescription :: ProvisionedCapacityDescription
newProvisionedCapacityDescription  = ProvisionedCapacityDescription { "CapacityId": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "StartDate": (NullOrUndefined Nothing) }

-- | Constructs ProvisionedCapacityDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProvisionedCapacityDescription' :: ( { "CapacityId" :: NullOrUndefined (String) , "StartDate" :: NullOrUndefined (String) , "ExpirationDate" :: NullOrUndefined (String) } -> {"CapacityId" :: NullOrUndefined (String) , "StartDate" :: NullOrUndefined (String) , "ExpirationDate" :: NullOrUndefined (String) } ) -> ProvisionedCapacityDescription
newProvisionedCapacityDescription'  customize = (ProvisionedCapacityDescription <<< customize) { "CapacityId": (NullOrUndefined Nothing), "ExpirationDate": (NullOrUndefined Nothing), "StartDate": (NullOrUndefined Nothing) }



newtype ProvisionedCapacityList = ProvisionedCapacityList (Array ProvisionedCapacityDescription)
derive instance newtypeProvisionedCapacityList :: Newtype ProvisionedCapacityList _
derive instance repGenericProvisionedCapacityList :: Generic ProvisionedCapacityList _
instance showProvisionedCapacityList :: Show ProvisionedCapacityList where show = genericShow
instance decodeProvisionedCapacityList :: Decode ProvisionedCapacityList where decode = genericDecode options
instance encodeProvisionedCapacityList :: Encode ProvisionedCapacityList where encode = genericEncode options



newtype PurchaseProvisionedCapacityInput = PurchaseProvisionedCapacityInput 
  { "accountId" :: (String)
  }
derive instance newtypePurchaseProvisionedCapacityInput :: Newtype PurchaseProvisionedCapacityInput _
derive instance repGenericPurchaseProvisionedCapacityInput :: Generic PurchaseProvisionedCapacityInput _
instance showPurchaseProvisionedCapacityInput :: Show PurchaseProvisionedCapacityInput where show = genericShow
instance decodePurchaseProvisionedCapacityInput :: Decode PurchaseProvisionedCapacityInput where decode = genericDecode options
instance encodePurchaseProvisionedCapacityInput :: Encode PurchaseProvisionedCapacityInput where encode = genericEncode options

-- | Constructs PurchaseProvisionedCapacityInput from required parameters
newPurchaseProvisionedCapacityInput :: String -> PurchaseProvisionedCapacityInput
newPurchaseProvisionedCapacityInput _accountId = PurchaseProvisionedCapacityInput { "accountId": _accountId }

-- | Constructs PurchaseProvisionedCapacityInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPurchaseProvisionedCapacityInput' :: String -> ( { "accountId" :: (String) } -> {"accountId" :: (String) } ) -> PurchaseProvisionedCapacityInput
newPurchaseProvisionedCapacityInput' _accountId customize = (PurchaseProvisionedCapacityInput <<< customize) { "accountId": _accountId }



newtype PurchaseProvisionedCapacityOutput = PurchaseProvisionedCapacityOutput 
  { "capacityId" :: NullOrUndefined (String)
  }
derive instance newtypePurchaseProvisionedCapacityOutput :: Newtype PurchaseProvisionedCapacityOutput _
derive instance repGenericPurchaseProvisionedCapacityOutput :: Generic PurchaseProvisionedCapacityOutput _
instance showPurchaseProvisionedCapacityOutput :: Show PurchaseProvisionedCapacityOutput where show = genericShow
instance decodePurchaseProvisionedCapacityOutput :: Decode PurchaseProvisionedCapacityOutput where decode = genericDecode options
instance encodePurchaseProvisionedCapacityOutput :: Encode PurchaseProvisionedCapacityOutput where encode = genericEncode options

-- | Constructs PurchaseProvisionedCapacityOutput from required parameters
newPurchaseProvisionedCapacityOutput :: PurchaseProvisionedCapacityOutput
newPurchaseProvisionedCapacityOutput  = PurchaseProvisionedCapacityOutput { "capacityId": (NullOrUndefined Nothing) }

-- | Constructs PurchaseProvisionedCapacityOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPurchaseProvisionedCapacityOutput' :: ( { "capacityId" :: NullOrUndefined (String) } -> {"capacityId" :: NullOrUndefined (String) } ) -> PurchaseProvisionedCapacityOutput
newPurchaseProvisionedCapacityOutput'  customize = (PurchaseProvisionedCapacityOutput <<< customize) { "capacityId": (NullOrUndefined Nothing) }



newtype QuoteFields = QuoteFields String
derive instance newtypeQuoteFields :: Newtype QuoteFields _
derive instance repGenericQuoteFields :: Generic QuoteFields _
instance showQuoteFields :: Show QuoteFields where show = genericShow
instance decodeQuoteFields :: Decode QuoteFields where decode = genericDecode options
instance encodeQuoteFields :: Encode QuoteFields where encode = genericEncode options



-- | <p>The input value for <code>RemoveTagsFromVaultInput</code>.</p>
newtype RemoveTagsFromVaultInput = RemoveTagsFromVaultInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "TagKeys" :: NullOrUndefined (TagKeyList)
  }
derive instance newtypeRemoveTagsFromVaultInput :: Newtype RemoveTagsFromVaultInput _
derive instance repGenericRemoveTagsFromVaultInput :: Generic RemoveTagsFromVaultInput _
instance showRemoveTagsFromVaultInput :: Show RemoveTagsFromVaultInput where show = genericShow
instance decodeRemoveTagsFromVaultInput :: Decode RemoveTagsFromVaultInput where decode = genericDecode options
instance encodeRemoveTagsFromVaultInput :: Encode RemoveTagsFromVaultInput where encode = genericEncode options

-- | Constructs RemoveTagsFromVaultInput from required parameters
newRemoveTagsFromVaultInput :: String -> String -> RemoveTagsFromVaultInput
newRemoveTagsFromVaultInput _accountId _vaultName = RemoveTagsFromVaultInput { "accountId": _accountId, "vaultName": _vaultName, "TagKeys": (NullOrUndefined Nothing) }

-- | Constructs RemoveTagsFromVaultInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsFromVaultInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "TagKeys" :: NullOrUndefined (TagKeyList) } -> {"accountId" :: (String) , "vaultName" :: (String) , "TagKeys" :: NullOrUndefined (TagKeyList) } ) -> RemoveTagsFromVaultInput
newRemoveTagsFromVaultInput' _accountId _vaultName customize = (RemoveTagsFromVaultInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "TagKeys": (NullOrUndefined Nothing) }



-- | <p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>
newtype RequestTimeoutException = RequestTimeoutException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeRequestTimeoutException :: Newtype RequestTimeoutException _
derive instance repGenericRequestTimeoutException :: Generic RequestTimeoutException _
instance showRequestTimeoutException :: Show RequestTimeoutException where show = genericShow
instance decodeRequestTimeoutException :: Decode RequestTimeoutException where decode = genericDecode options
instance encodeRequestTimeoutException :: Encode RequestTimeoutException where encode = genericEncode options

-- | Constructs RequestTimeoutException from required parameters
newRequestTimeoutException :: RequestTimeoutException
newRequestTimeoutException  = RequestTimeoutException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs RequestTimeoutException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRequestTimeoutException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> RequestTimeoutException
newRequestTimeoutException'  customize = (RequestTimeoutException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p>Contains information about the location in Amazon S3 where the select job results are stored.</p>
newtype S3Location = S3Location 
  { "BucketName" :: NullOrUndefined (String)
  , "Prefix" :: NullOrUndefined (String)
  , "Encryption" :: NullOrUndefined (Encryption)
  , "CannedACL" :: NullOrUndefined (CannedACL)
  , "AccessControlList" :: NullOrUndefined (AccessControlPolicyList)
  , "Tagging" :: NullOrUndefined (Hashmap')
  , "UserMetadata" :: NullOrUndefined (Hashmap')
  , "StorageClass" :: NullOrUndefined (StorageClass)
  }
derive instance newtypeS3Location :: Newtype S3Location _
derive instance repGenericS3Location :: Generic S3Location _
instance showS3Location :: Show S3Location where show = genericShow
instance decodeS3Location :: Decode S3Location where decode = genericDecode options
instance encodeS3Location :: Encode S3Location where encode = genericEncode options

-- | Constructs S3Location from required parameters
newS3Location :: S3Location
newS3Location  = S3Location { "AccessControlList": (NullOrUndefined Nothing), "BucketName": (NullOrUndefined Nothing), "CannedACL": (NullOrUndefined Nothing), "Encryption": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "StorageClass": (NullOrUndefined Nothing), "Tagging": (NullOrUndefined Nothing), "UserMetadata": (NullOrUndefined Nothing) }

-- | Constructs S3Location's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Location' :: ( { "BucketName" :: NullOrUndefined (String) , "Prefix" :: NullOrUndefined (String) , "Encryption" :: NullOrUndefined (Encryption) , "CannedACL" :: NullOrUndefined (CannedACL) , "AccessControlList" :: NullOrUndefined (AccessControlPolicyList) , "Tagging" :: NullOrUndefined (Hashmap') , "UserMetadata" :: NullOrUndefined (Hashmap') , "StorageClass" :: NullOrUndefined (StorageClass) } -> {"BucketName" :: NullOrUndefined (String) , "Prefix" :: NullOrUndefined (String) , "Encryption" :: NullOrUndefined (Encryption) , "CannedACL" :: NullOrUndefined (CannedACL) , "AccessControlList" :: NullOrUndefined (AccessControlPolicyList) , "Tagging" :: NullOrUndefined (Hashmap') , "UserMetadata" :: NullOrUndefined (Hashmap') , "StorageClass" :: NullOrUndefined (StorageClass) } ) -> S3Location
newS3Location'  customize = (S3Location <<< customize) { "AccessControlList": (NullOrUndefined Nothing), "BucketName": (NullOrUndefined Nothing), "CannedACL": (NullOrUndefined Nothing), "Encryption": (NullOrUndefined Nothing), "Prefix": (NullOrUndefined Nothing), "StorageClass": (NullOrUndefined Nothing), "Tagging": (NullOrUndefined Nothing), "UserMetadata": (NullOrUndefined Nothing) }



-- | <p>Contains information about the parameters used for a select.</p>
newtype SelectParameters = SelectParameters 
  { "InputSerialization" :: NullOrUndefined (InputSerialization)
  , "ExpressionType" :: NullOrUndefined (ExpressionType)
  , "Expression" :: NullOrUndefined (String)
  , "OutputSerialization" :: NullOrUndefined (OutputSerialization)
  }
derive instance newtypeSelectParameters :: Newtype SelectParameters _
derive instance repGenericSelectParameters :: Generic SelectParameters _
instance showSelectParameters :: Show SelectParameters where show = genericShow
instance decodeSelectParameters :: Decode SelectParameters where decode = genericDecode options
instance encodeSelectParameters :: Encode SelectParameters where encode = genericEncode options

-- | Constructs SelectParameters from required parameters
newSelectParameters :: SelectParameters
newSelectParameters  = SelectParameters { "Expression": (NullOrUndefined Nothing), "ExpressionType": (NullOrUndefined Nothing), "InputSerialization": (NullOrUndefined Nothing), "OutputSerialization": (NullOrUndefined Nothing) }

-- | Constructs SelectParameters's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSelectParameters' :: ( { "InputSerialization" :: NullOrUndefined (InputSerialization) , "ExpressionType" :: NullOrUndefined (ExpressionType) , "Expression" :: NullOrUndefined (String) , "OutputSerialization" :: NullOrUndefined (OutputSerialization) } -> {"InputSerialization" :: NullOrUndefined (InputSerialization) , "ExpressionType" :: NullOrUndefined (ExpressionType) , "Expression" :: NullOrUndefined (String) , "OutputSerialization" :: NullOrUndefined (OutputSerialization) } ) -> SelectParameters
newSelectParameters'  customize = (SelectParameters <<< customize) { "Expression": (NullOrUndefined Nothing), "ExpressionType": (NullOrUndefined Nothing), "InputSerialization": (NullOrUndefined Nothing), "OutputSerialization": (NullOrUndefined Nothing) }



-- | <p>Returned if the service cannot complete the request.</p>
newtype ServiceUnavailableException = ServiceUnavailableException 
  { "type" :: NullOrUndefined (String)
  , "code" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeServiceUnavailableException :: Newtype ServiceUnavailableException _
derive instance repGenericServiceUnavailableException :: Generic ServiceUnavailableException _
instance showServiceUnavailableException :: Show ServiceUnavailableException where show = genericShow
instance decodeServiceUnavailableException :: Decode ServiceUnavailableException where decode = genericDecode options
instance encodeServiceUnavailableException :: Encode ServiceUnavailableException where encode = genericEncode options

-- | Constructs ServiceUnavailableException from required parameters
newServiceUnavailableException :: ServiceUnavailableException
newServiceUnavailableException  = ServiceUnavailableException { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }

-- | Constructs ServiceUnavailableException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceUnavailableException' :: ( { "type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"type" :: NullOrUndefined (String) , "code" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> ServiceUnavailableException
newServiceUnavailableException'  customize = (ServiceUnavailableException <<< customize) { "code": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing), "type": (NullOrUndefined Nothing) }



-- | <p>SetDataRetrievalPolicy input.</p>
newtype SetDataRetrievalPolicyInput = SetDataRetrievalPolicyInput 
  { "accountId" :: (String)
  , "Policy" :: NullOrUndefined (DataRetrievalPolicy)
  }
derive instance newtypeSetDataRetrievalPolicyInput :: Newtype SetDataRetrievalPolicyInput _
derive instance repGenericSetDataRetrievalPolicyInput :: Generic SetDataRetrievalPolicyInput _
instance showSetDataRetrievalPolicyInput :: Show SetDataRetrievalPolicyInput where show = genericShow
instance decodeSetDataRetrievalPolicyInput :: Decode SetDataRetrievalPolicyInput where decode = genericDecode options
instance encodeSetDataRetrievalPolicyInput :: Encode SetDataRetrievalPolicyInput where encode = genericEncode options

-- | Constructs SetDataRetrievalPolicyInput from required parameters
newSetDataRetrievalPolicyInput :: String -> SetDataRetrievalPolicyInput
newSetDataRetrievalPolicyInput _accountId = SetDataRetrievalPolicyInput { "accountId": _accountId, "Policy": (NullOrUndefined Nothing) }

-- | Constructs SetDataRetrievalPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetDataRetrievalPolicyInput' :: String -> ( { "accountId" :: (String) , "Policy" :: NullOrUndefined (DataRetrievalPolicy) } -> {"accountId" :: (String) , "Policy" :: NullOrUndefined (DataRetrievalPolicy) } ) -> SetDataRetrievalPolicyInput
newSetDataRetrievalPolicyInput' _accountId customize = (SetDataRetrievalPolicyInput <<< customize) { "accountId": _accountId, "Policy": (NullOrUndefined Nothing) }



-- | <p>SetVaultAccessPolicy input.</p>
newtype SetVaultAccessPolicyInput = SetVaultAccessPolicyInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "policy" :: NullOrUndefined (VaultAccessPolicy)
  }
derive instance newtypeSetVaultAccessPolicyInput :: Newtype SetVaultAccessPolicyInput _
derive instance repGenericSetVaultAccessPolicyInput :: Generic SetVaultAccessPolicyInput _
instance showSetVaultAccessPolicyInput :: Show SetVaultAccessPolicyInput where show = genericShow
instance decodeSetVaultAccessPolicyInput :: Decode SetVaultAccessPolicyInput where decode = genericDecode options
instance encodeSetVaultAccessPolicyInput :: Encode SetVaultAccessPolicyInput where encode = genericEncode options

-- | Constructs SetVaultAccessPolicyInput from required parameters
newSetVaultAccessPolicyInput :: String -> String -> SetVaultAccessPolicyInput
newSetVaultAccessPolicyInput _accountId _vaultName = SetVaultAccessPolicyInput { "accountId": _accountId, "vaultName": _vaultName, "policy": (NullOrUndefined Nothing) }

-- | Constructs SetVaultAccessPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetVaultAccessPolicyInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "policy" :: NullOrUndefined (VaultAccessPolicy) } -> {"accountId" :: (String) , "vaultName" :: (String) , "policy" :: NullOrUndefined (VaultAccessPolicy) } ) -> SetVaultAccessPolicyInput
newSetVaultAccessPolicyInput' _accountId _vaultName customize = (SetVaultAccessPolicyInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "policy": (NullOrUndefined Nothing) }



-- | <p>Provides options to configure notifications that will be sent when specific events happen to a vault.</p>
newtype SetVaultNotificationsInput = SetVaultNotificationsInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "vaultNotificationConfig" :: NullOrUndefined (VaultNotificationConfig)
  }
derive instance newtypeSetVaultNotificationsInput :: Newtype SetVaultNotificationsInput _
derive instance repGenericSetVaultNotificationsInput :: Generic SetVaultNotificationsInput _
instance showSetVaultNotificationsInput :: Show SetVaultNotificationsInput where show = genericShow
instance decodeSetVaultNotificationsInput :: Decode SetVaultNotificationsInput where decode = genericDecode options
instance encodeSetVaultNotificationsInput :: Encode SetVaultNotificationsInput where encode = genericEncode options

-- | Constructs SetVaultNotificationsInput from required parameters
newSetVaultNotificationsInput :: String -> String -> SetVaultNotificationsInput
newSetVaultNotificationsInput _accountId _vaultName = SetVaultNotificationsInput { "accountId": _accountId, "vaultName": _vaultName, "vaultNotificationConfig": (NullOrUndefined Nothing) }

-- | Constructs SetVaultNotificationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetVaultNotificationsInput' :: String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "vaultNotificationConfig" :: NullOrUndefined (VaultNotificationConfig) } -> {"accountId" :: (String) , "vaultName" :: (String) , "vaultNotificationConfig" :: NullOrUndefined (VaultNotificationConfig) } ) -> SetVaultNotificationsInput
newSetVaultNotificationsInput' _accountId _vaultName customize = (SetVaultNotificationsInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "vaultNotificationConfig": (NullOrUndefined Nothing) }



newtype Size = Size Number
derive instance newtypeSize :: Newtype Size _
derive instance repGenericSize :: Generic Size _
instance showSize :: Show Size where show = genericShow
instance decodeSize :: Decode Size where decode = genericDecode options
instance encodeSize :: Encode Size where encode = genericEncode options



newtype StatusCode = StatusCode String
derive instance newtypeStatusCode :: Newtype StatusCode _
derive instance repGenericStatusCode :: Generic StatusCode _
instance showStatusCode :: Show StatusCode where show = genericShow
instance decodeStatusCode :: Decode StatusCode where decode = genericDecode options
instance encodeStatusCode :: Encode StatusCode where encode = genericEncode options



newtype StorageClass = StorageClass String
derive instance newtypeStorageClass :: Newtype StorageClass _
derive instance repGenericStorageClass :: Generic StorageClass _
instance showStorageClass :: Show StorageClass where show = genericShow
instance decodeStorageClass :: Decode StorageClass where decode = genericDecode options
instance encodeStorageClass :: Encode StorageClass where encode = genericEncode options



newtype Stream = Stream String
derive instance newtypeStream :: Newtype Stream _
derive instance repGenericStream :: Generic Stream _
instance showStream :: Show Stream where show = genericShow
instance decodeStream :: Decode Stream where decode = genericDecode options
instance encodeStream :: Encode Stream where encode = genericEncode options



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array String)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagMap = TagMap (StrMap.StrMap TagValue)
derive instance newtypeTagMap :: Newtype TagMap _
derive instance repGenericTagMap :: Generic TagMap _
instance showTagMap :: Show TagMap where show = genericShow
instance decodeTagMap :: Decode TagMap where decode = genericDecode options
instance encodeTagMap :: Encode TagMap where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype Type = Type String
derive instance newtypeType :: Newtype Type _
derive instance repGenericType :: Generic Type _
instance showType :: Show Type where show = genericShow
instance decodeType :: Decode Type where decode = genericDecode options
instance encodeType :: Encode Type where encode = genericEncode options



-- | <p>Provides options to add an archive to a vault.</p>
newtype UploadArchiveInput = UploadArchiveInput 
  { "vaultName" :: (String)
  , "accountId" :: (String)
  , "archiveDescription" :: NullOrUndefined (String)
  , "checksum" :: NullOrUndefined (String)
  , "body" :: NullOrUndefined (Stream)
  }
derive instance newtypeUploadArchiveInput :: Newtype UploadArchiveInput _
derive instance repGenericUploadArchiveInput :: Generic UploadArchiveInput _
instance showUploadArchiveInput :: Show UploadArchiveInput where show = genericShow
instance decodeUploadArchiveInput :: Decode UploadArchiveInput where decode = genericDecode options
instance encodeUploadArchiveInput :: Encode UploadArchiveInput where encode = genericEncode options

-- | Constructs UploadArchiveInput from required parameters
newUploadArchiveInput :: String -> String -> UploadArchiveInput
newUploadArchiveInput _accountId _vaultName = UploadArchiveInput { "accountId": _accountId, "vaultName": _vaultName, "archiveDescription": (NullOrUndefined Nothing), "body": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing) }

-- | Constructs UploadArchiveInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadArchiveInput' :: String -> String -> ( { "vaultName" :: (String) , "accountId" :: (String) , "archiveDescription" :: NullOrUndefined (String) , "checksum" :: NullOrUndefined (String) , "body" :: NullOrUndefined (Stream) } -> {"vaultName" :: (String) , "accountId" :: (String) , "archiveDescription" :: NullOrUndefined (String) , "checksum" :: NullOrUndefined (String) , "body" :: NullOrUndefined (Stream) } ) -> UploadArchiveInput
newUploadArchiveInput' _accountId _vaultName customize = (UploadArchiveInput <<< customize) { "accountId": _accountId, "vaultName": _vaultName, "archiveDescription": (NullOrUndefined Nothing), "body": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing) }



-- | <p>A list of in-progress multipart uploads for a vault.</p>
newtype UploadListElement = UploadListElement 
  { "MultipartUploadId" :: NullOrUndefined (String)
  , "VaultARN" :: NullOrUndefined (String)
  , "ArchiveDescription" :: NullOrUndefined (String)
  , "PartSizeInBytes" :: NullOrUndefined (Number)
  , "CreationDate" :: NullOrUndefined (String)
  }
derive instance newtypeUploadListElement :: Newtype UploadListElement _
derive instance repGenericUploadListElement :: Generic UploadListElement _
instance showUploadListElement :: Show UploadListElement where show = genericShow
instance decodeUploadListElement :: Decode UploadListElement where decode = genericDecode options
instance encodeUploadListElement :: Encode UploadListElement where encode = genericEncode options

-- | Constructs UploadListElement from required parameters
newUploadListElement :: UploadListElement
newUploadListElement  = UploadListElement { "ArchiveDescription": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "MultipartUploadId": (NullOrUndefined Nothing), "PartSizeInBytes": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing) }

-- | Constructs UploadListElement's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadListElement' :: ( { "MultipartUploadId" :: NullOrUndefined (String) , "VaultARN" :: NullOrUndefined (String) , "ArchiveDescription" :: NullOrUndefined (String) , "PartSizeInBytes" :: NullOrUndefined (Number) , "CreationDate" :: NullOrUndefined (String) } -> {"MultipartUploadId" :: NullOrUndefined (String) , "VaultARN" :: NullOrUndefined (String) , "ArchiveDescription" :: NullOrUndefined (String) , "PartSizeInBytes" :: NullOrUndefined (Number) , "CreationDate" :: NullOrUndefined (String) } ) -> UploadListElement
newUploadListElement'  customize = (UploadListElement <<< customize) { "ArchiveDescription": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "MultipartUploadId": (NullOrUndefined Nothing), "PartSizeInBytes": (NullOrUndefined Nothing), "VaultARN": (NullOrUndefined Nothing) }



-- | <p>Provides options to upload a part of an archive in a multipart upload operation.</p>
newtype UploadMultipartPartInput = UploadMultipartPartInput 
  { "accountId" :: (String)
  , "vaultName" :: (String)
  , "uploadId" :: (String)
  , "checksum" :: NullOrUndefined (String)
  , "range" :: NullOrUndefined (String)
  , "body" :: NullOrUndefined (Stream)
  }
derive instance newtypeUploadMultipartPartInput :: Newtype UploadMultipartPartInput _
derive instance repGenericUploadMultipartPartInput :: Generic UploadMultipartPartInput _
instance showUploadMultipartPartInput :: Show UploadMultipartPartInput where show = genericShow
instance decodeUploadMultipartPartInput :: Decode UploadMultipartPartInput where decode = genericDecode options
instance encodeUploadMultipartPartInput :: Encode UploadMultipartPartInput where encode = genericEncode options

-- | Constructs UploadMultipartPartInput from required parameters
newUploadMultipartPartInput :: String -> String -> String -> UploadMultipartPartInput
newUploadMultipartPartInput _accountId _uploadId _vaultName = UploadMultipartPartInput { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName, "body": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing), "range": (NullOrUndefined Nothing) }

-- | Constructs UploadMultipartPartInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadMultipartPartInput' :: String -> String -> String -> ( { "accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) , "checksum" :: NullOrUndefined (String) , "range" :: NullOrUndefined (String) , "body" :: NullOrUndefined (Stream) } -> {"accountId" :: (String) , "vaultName" :: (String) , "uploadId" :: (String) , "checksum" :: NullOrUndefined (String) , "range" :: NullOrUndefined (String) , "body" :: NullOrUndefined (Stream) } ) -> UploadMultipartPartInput
newUploadMultipartPartInput' _accountId _uploadId _vaultName customize = (UploadMultipartPartInput <<< customize) { "accountId": _accountId, "uploadId": _uploadId, "vaultName": _vaultName, "body": (NullOrUndefined Nothing), "checksum": (NullOrUndefined Nothing), "range": (NullOrUndefined Nothing) }



-- | <p>Contains the Amazon Glacier response to your request.</p>
newtype UploadMultipartPartOutput = UploadMultipartPartOutput 
  { "checksum" :: NullOrUndefined (String)
  }
derive instance newtypeUploadMultipartPartOutput :: Newtype UploadMultipartPartOutput _
derive instance repGenericUploadMultipartPartOutput :: Generic UploadMultipartPartOutput _
instance showUploadMultipartPartOutput :: Show UploadMultipartPartOutput where show = genericShow
instance decodeUploadMultipartPartOutput :: Decode UploadMultipartPartOutput where decode = genericDecode options
instance encodeUploadMultipartPartOutput :: Encode UploadMultipartPartOutput where encode = genericEncode options

-- | Constructs UploadMultipartPartOutput from required parameters
newUploadMultipartPartOutput :: UploadMultipartPartOutput
newUploadMultipartPartOutput  = UploadMultipartPartOutput { "checksum": (NullOrUndefined Nothing) }

-- | Constructs UploadMultipartPartOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadMultipartPartOutput' :: ( { "checksum" :: NullOrUndefined (String) } -> {"checksum" :: NullOrUndefined (String) } ) -> UploadMultipartPartOutput
newUploadMultipartPartOutput'  customize = (UploadMultipartPartOutput <<< customize) { "checksum": (NullOrUndefined Nothing) }



newtype UploadsList = UploadsList (Array UploadListElement)
derive instance newtypeUploadsList :: Newtype UploadsList _
derive instance repGenericUploadsList :: Generic UploadsList _
instance showUploadsList :: Show UploadsList where show = genericShow
instance decodeUploadsList :: Decode UploadsList where decode = genericDecode options
instance encodeUploadsList :: Encode UploadsList where encode = genericEncode options



-- | <p>Contains the vault access policy.</p>
newtype VaultAccessPolicy = VaultAccessPolicy 
  { "Policy" :: NullOrUndefined (String)
  }
derive instance newtypeVaultAccessPolicy :: Newtype VaultAccessPolicy _
derive instance repGenericVaultAccessPolicy :: Generic VaultAccessPolicy _
instance showVaultAccessPolicy :: Show VaultAccessPolicy where show = genericShow
instance decodeVaultAccessPolicy :: Decode VaultAccessPolicy where decode = genericDecode options
instance encodeVaultAccessPolicy :: Encode VaultAccessPolicy where encode = genericEncode options

-- | Constructs VaultAccessPolicy from required parameters
newVaultAccessPolicy :: VaultAccessPolicy
newVaultAccessPolicy  = VaultAccessPolicy { "Policy": (NullOrUndefined Nothing) }

-- | Constructs VaultAccessPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVaultAccessPolicy' :: ( { "Policy" :: NullOrUndefined (String) } -> {"Policy" :: NullOrUndefined (String) } ) -> VaultAccessPolicy
newVaultAccessPolicy'  customize = (VaultAccessPolicy <<< customize) { "Policy": (NullOrUndefined Nothing) }



newtype VaultList = VaultList (Array DescribeVaultOutput)
derive instance newtypeVaultList :: Newtype VaultList _
derive instance repGenericVaultList :: Generic VaultList _
instance showVaultList :: Show VaultList where show = genericShow
instance decodeVaultList :: Decode VaultList where decode = genericDecode options
instance encodeVaultList :: Encode VaultList where encode = genericEncode options



-- | <p>Contains the vault lock policy.</p>
newtype VaultLockPolicy = VaultLockPolicy 
  { "Policy" :: NullOrUndefined (String)
  }
derive instance newtypeVaultLockPolicy :: Newtype VaultLockPolicy _
derive instance repGenericVaultLockPolicy :: Generic VaultLockPolicy _
instance showVaultLockPolicy :: Show VaultLockPolicy where show = genericShow
instance decodeVaultLockPolicy :: Decode VaultLockPolicy where decode = genericDecode options
instance encodeVaultLockPolicy :: Encode VaultLockPolicy where encode = genericEncode options

-- | Constructs VaultLockPolicy from required parameters
newVaultLockPolicy :: VaultLockPolicy
newVaultLockPolicy  = VaultLockPolicy { "Policy": (NullOrUndefined Nothing) }

-- | Constructs VaultLockPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVaultLockPolicy' :: ( { "Policy" :: NullOrUndefined (String) } -> {"Policy" :: NullOrUndefined (String) } ) -> VaultLockPolicy
newVaultLockPolicy'  customize = (VaultLockPolicy <<< customize) { "Policy": (NullOrUndefined Nothing) }



-- | <p>Represents a vault's notification configuration.</p>
newtype VaultNotificationConfig = VaultNotificationConfig 
  { "SNSTopic" :: NullOrUndefined (String)
  , "Events" :: NullOrUndefined (NotificationEventList)
  }
derive instance newtypeVaultNotificationConfig :: Newtype VaultNotificationConfig _
derive instance repGenericVaultNotificationConfig :: Generic VaultNotificationConfig _
instance showVaultNotificationConfig :: Show VaultNotificationConfig where show = genericShow
instance decodeVaultNotificationConfig :: Decode VaultNotificationConfig where decode = genericDecode options
instance encodeVaultNotificationConfig :: Encode VaultNotificationConfig where encode = genericEncode options

-- | Constructs VaultNotificationConfig from required parameters
newVaultNotificationConfig :: VaultNotificationConfig
newVaultNotificationConfig  = VaultNotificationConfig { "Events": (NullOrUndefined Nothing), "SNSTopic": (NullOrUndefined Nothing) }

-- | Constructs VaultNotificationConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVaultNotificationConfig' :: ( { "SNSTopic" :: NullOrUndefined (String) , "Events" :: NullOrUndefined (NotificationEventList) } -> {"SNSTopic" :: NullOrUndefined (String) , "Events" :: NullOrUndefined (NotificationEventList) } ) -> VaultNotificationConfig
newVaultNotificationConfig'  customize = (VaultNotificationConfig <<< customize) { "Events": (NullOrUndefined Nothing), "SNSTopic": (NullOrUndefined Nothing) }



newtype Hashmap' = Hashmap' (StrMap.StrMap String)
derive instance newtypeHashmap' :: Newtype Hashmap' _
derive instance repGenericHashmap' :: Generic Hashmap' _
instance showHashmap' :: Show Hashmap' where show = genericShow
instance decodeHashmap' :: Decode Hashmap' where decode = genericDecode options
instance encodeHashmap' :: Encode Hashmap' where encode = genericEncode options



newtype Httpstatus' = Httpstatus' Int
derive instance newtypeHttpstatus' :: Newtype Httpstatus' _
derive instance repGenericHttpstatus' :: Generic Httpstatus' _
instance showHttpstatus' :: Show Httpstatus' where show = genericShow
instance decodeHttpstatus' :: Decode Httpstatus' where decode = genericDecode options
instance encodeHttpstatus' :: Encode Httpstatus' where encode = genericEncode options

