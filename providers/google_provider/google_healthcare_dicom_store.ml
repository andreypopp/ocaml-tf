(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_healthcare_dicom_store__notification_config = {
  pubsub_topic : string;
      (** The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_healthcare_dicom_store__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_healthcare_dicom_store__timeouts *)

type google_healthcare_dicom_store = {
  dataset : string;
      (** Identifies the dataset addressed by this request. Must be in the format
'projects/{project}/locations/{location}/datasets/{dataset}' *)
  labels : (string * string) list option; [@option]
      (** User-supplied key-value pairs used to organize DICOM stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}

No more than 64 labels can be associated with a given store.

An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;
      (** The resource name for the DicomStore.

** Changing this property may recreate the Dicom store (removing all data) ** *)
  notification_config :
    google_healthcare_dicom_store__notification_config list;
  timeouts : google_healthcare_dicom_store__timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_dicom_store *)

let google_healthcare_dicom_store ?labels ?timeouts ~dataset ~name
    ~notification_config __resource_id =
  let __resource_type = "google_healthcare_dicom_store" in
  let __resource =
    { dataset; labels; name; notification_config; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_dicom_store __resource);
  ()