(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification_config = {
  pubsub_topic : string prop;
      (** The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.
PubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.
It is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message
was published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a
project. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given
Cloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_healthcare_dicom_store = {
  dataset : string prop;
      (** Identifies the dataset addressed by this request. Must be in the format
'projects/{project}/locations/{location}/datasets/{dataset}' *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
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
  name : string prop;
      (** The resource name for the DicomStore.

** Changing this property may recreate the Dicom store (removing all data) ** *)
  notification_config : notification_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_dicom_store *)

let notification_config ~pubsub_topic () : notification_config =
  { pubsub_topic }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_dicom_store ?id ?labels ?timeouts ~dataset
    ~name ~notification_config () : google_healthcare_dicom_store =
  { dataset; id; labels; name; notification_config; timeouts }

type t = {
  dataset : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?timeouts ~dataset ~name ~notification_config
    __id =
  let __type = "google_healthcare_dicom_store" in
  let __attrs =
    ({
       dataset = Prop.computed __type __id "dataset";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       self_link = Prop.computed __type __id "self_link";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_dicom_store
        (google_healthcare_dicom_store ?id ?labels ?timeouts ~dataset
           ~name ~notification_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?timeouts ~dataset ~name
    ~notification_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?timeouts ~dataset ~name ~notification_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
