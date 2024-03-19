(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type customer_encryption = {
  encryption_algorithm : string prop option; [@option]
      (** The encryption algorithm. Default: AES256 *)
  encryption_key : string prop;
      (** Base64 encoded customer supplied encryption key. *)
}
[@@deriving yojson_of]
(** Encryption key; encoded using base64. *)

type retention = {
  mode : string prop;
      (** The object retention mode. Supported values include: Unlocked, Locked. *)
  retain_until_time : string prop;
      (** Time in RFC 3339 (e.g. 2030-01-01T02:03:04Z) until which object retention protects this object. *)
}
[@@deriving yojson_of]
(** Object level retention configuration. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_storage_bucket_object = {
  bucket : string prop;  (** The name of the containing bucket. *)
  cache_control : string prop option; [@option]
      (** Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600 *)
  content : string prop option; [@option]
      (** Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. *)
  content_disposition : string prop option; [@option]
      (** Content-Disposition of the object data. *)
  content_encoding : string prop option; [@option]
      (** Content-Encoding of the object data. *)
  content_language : string prop option; [@option]
      (** Content-Language of the object data. *)
  content_type : string prop option; [@option]
      (** Content-Type of the object data. Defaults to application/octet-stream or text/plain; charset=utf-8. *)
  detect_md5hash : string prop option; [@option]
      (** detect_md5hash *)
  event_based_hold : bool prop option; [@option]
      (** Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). *)
  id : string prop option; [@option]  (** id *)
  kms_key_name : string prop option; [@option]
      (** Resource name of the Cloud KMS key that will be used to encrypt the object. Overrides the object metadata's kmsKeyName value, if any. *)
  metadata : (string * string prop) list option; [@option]
      (** User-provided metadata, in key/value pairs. *)
  name : string prop;
      (** The name of the object. If you're interpolating the name of this object, see output_name instead. *)
  source : string prop option; [@option]
      (** A path to the data you want to upload. Must be defined if content is not. *)
  storage_class : string prop option; [@option]
      (** The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket's default storage class or to a standard class. *)
  temporary_hold : bool prop option; [@option]
      (** Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. *)
  customer_encryption : customer_encryption list;
  retention : retention list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_storage_bucket_object *)

let customer_encryption ?encryption_algorithm ~encryption_key () :
    customer_encryption =
  { encryption_algorithm; encryption_key }

let retention ~mode ~retain_until_time () : retention =
  { mode; retain_until_time }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_bucket_object ?cache_control ?content
    ?content_disposition ?content_encoding ?content_language
    ?content_type ?detect_md5hash ?event_based_hold ?id ?kms_key_name
    ?metadata ?source ?storage_class ?temporary_hold ?timeouts
    ~bucket ~name ~customer_encryption ~retention () :
    google_storage_bucket_object =
  {
    bucket;
    cache_control;
    content;
    content_disposition;
    content_encoding;
    content_language;
    content_type;
    detect_md5hash;
    event_based_hold;
    id;
    kms_key_name;
    metadata;
    name;
    source;
    storage_class;
    temporary_hold;
    customer_encryption;
    retention;
    timeouts;
  }

type t = {
  bucket : string prop;
  cache_control : string prop;
  content : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  crc32c : string prop;
  detect_md5hash : string prop;
  event_based_hold : bool prop;
  id : string prop;
  kms_key_name : string prop;
  md5hash : string prop;
  media_link : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  output_name : string prop;
  self_link : string prop;
  source : string prop;
  storage_class : string prop;
  temporary_hold : bool prop;
}

let register ?tf_module ?cache_control ?content ?content_disposition
    ?content_encoding ?content_language ?content_type ?detect_md5hash
    ?event_based_hold ?id ?kms_key_name ?metadata ?source
    ?storage_class ?temporary_hold ?timeouts ~bucket ~name
    ~customer_encryption ~retention __resource_id =
  let __resource_type = "google_storage_bucket_object" in
  let __resource =
    google_storage_bucket_object ?cache_control ?content
      ?content_disposition ?content_encoding ?content_language
      ?content_type ?detect_md5hash ?event_based_hold ?id
      ?kms_key_name ?metadata ?source ?storage_class ?temporary_hold
      ?timeouts ~bucket ~name ~customer_encryption ~retention ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_object __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       cache_control =
         Prop.computed __resource_type __resource_id "cache_control";
       content =
         Prop.computed __resource_type __resource_id "content";
       content_disposition =
         Prop.computed __resource_type __resource_id
           "content_disposition";
       content_encoding =
         Prop.computed __resource_type __resource_id
           "content_encoding";
       content_language =
         Prop.computed __resource_type __resource_id
           "content_language";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       crc32c = Prop.computed __resource_type __resource_id "crc32c";
       detect_md5hash =
         Prop.computed __resource_type __resource_id "detect_md5hash";
       event_based_hold =
         Prop.computed __resource_type __resource_id
           "event_based_hold";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_name =
         Prop.computed __resource_type __resource_id "kms_key_name";
       md5hash =
         Prop.computed __resource_type __resource_id "md5hash";
       media_link =
         Prop.computed __resource_type __resource_id "media_link";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       output_name =
         Prop.computed __resource_type __resource_id "output_name";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       source = Prop.computed __resource_type __resource_id "source";
       storage_class =
         Prop.computed __resource_type __resource_id "storage_class";
       temporary_hold =
         Prop.computed __resource_type __resource_id "temporary_hold";
     }
      : t)
  in
  __resource_attributes
