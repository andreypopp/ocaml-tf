(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_storage_bucket_object__customer_encryption = {
  encryption_algorithm : string option; [@option]
      (** The encryption algorithm. Default: AES256 *)
  encryption_key : string;
      (** Base64 encoded customer supplied encryption key. *)
}
[@@deriving yojson_of]
(** Encryption key; encoded using base64. *)

type google_storage_bucket_object__retention = {
  mode : string;
      (** The object retention mode. Supported values include: Unlocked, Locked. *)
  retain_until_time : string;
      (** Time in RFC 3339 (e.g. 2030-01-01T02:03:04Z) until which object retention protects this object. *)
}
[@@deriving yojson_of]
(** Object level retention configuration. *)

type google_storage_bucket_object__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_storage_bucket_object__timeouts *)

type google_storage_bucket_object = {
  bucket : string;  (** The name of the containing bucket. *)
  cache_control : string option; [@option]
      (** Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users, the default will be public, max-age=3600 *)
  content : string option; [@option]
      (** Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output. *)
  content_disposition : string option; [@option]
      (** Content-Disposition of the object data. *)
  content_encoding : string option; [@option]
      (** Content-Encoding of the object data. *)
  content_language : string option; [@option]
      (** Content-Language of the object data. *)
  content_type : string option; [@option]
      (** Content-Type of the object data. Defaults to application/octet-stream or text/plain; charset=utf-8. *)
  detect_md5hash : string option; [@option]  (** detect_md5hash *)
  event_based_hold : bool option; [@option]
      (** Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). *)
  id : string option; [@option]  (** id *)
  kms_key_name : string option; [@option]
      (** Resource name of the Cloud KMS key that will be used to encrypt the object. Overrides the object metadata's kmsKeyName value, if any. *)
  metadata : (string * string) list option; [@option]
      (** User-provided metadata, in key/value pairs. *)
  name : string;
      (** The name of the object. If you're interpolating the name of this object, see output_name instead. *)
  source : string option; [@option]
      (** A path to the data you want to upload. Must be defined if content is not. *)
  storage_class : string option; [@option]
      (** The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket's default storage class or to a standard class. *)
  temporary_hold : bool option; [@option]
      (** Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. *)
  customer_encryption :
    google_storage_bucket_object__customer_encryption list;
  retention : google_storage_bucket_object__retention list;
  timeouts : google_storage_bucket_object__timeouts option;
}
[@@deriving yojson_of]
(** google_storage_bucket_object *)

let google_storage_bucket_object ?cache_control ?content
    ?content_disposition ?content_encoding ?content_language
    ?content_type ?detect_md5hash ?event_based_hold ?id ?kms_key_name
    ?metadata ?source ?storage_class ?temporary_hold ?timeouts
    ~bucket ~name ~customer_encryption ~retention __resource_id =
  let __resource_type = "google_storage_bucket_object" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_storage_bucket_object __resource);
  ()
