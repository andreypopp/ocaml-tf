(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_healthcare_consent_store = {
  dataset : string prop;
      (** Identifies the dataset addressed by this request. Must be in the format
'projects/{project}/locations/{location}/datasets/{dataset}' *)
  default_consent_ttl : string prop option; [@option]
      (** Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  enable_consent_create_on_update : bool prop option; [@option]
      (** If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-supplied key-value pairs used to organize Consent stores.

Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
conform to the following PCRE regular expression: '[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}'

Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
bytes, and must conform to the following PCRE regular expression: '[\p{Ll}\p{Lo}\p{N}_-]{0,63}'

No more than 64 labels can be associated with a given store.

An object containing a list of key: value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;
      (** The name of this ConsentStore, for example:
consent1 *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_consent_store *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_healthcare_consent_store ?default_consent_ttl
    ?enable_consent_create_on_update ?id ?labels ?timeouts ~dataset
    ~name () : google_healthcare_consent_store =
  {
    dataset;
    default_consent_ttl;
    enable_consent_create_on_update;
    id;
    labels;
    name;
    timeouts;
  }

type t = {
  dataset : string prop;
  default_consent_ttl : string prop;
  effective_labels : (string * string) list prop;
  enable_consent_create_on_update : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?default_consent_ttl ?enable_consent_create_on_update ?id
    ?labels ?timeouts ~dataset ~name __id =
  let __type = "google_healthcare_consent_store" in
  let __attrs =
    ({
       dataset = Prop.computed __type __id "dataset";
       default_consent_ttl =
         Prop.computed __type __id "default_consent_ttl";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_consent_create_on_update =
         Prop.computed __type __id "enable_consent_create_on_update";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_healthcare_consent_store
        (google_healthcare_consent_store ?default_consent_ttl
           ?enable_consent_create_on_update ?id ?labels ?timeouts
           ~dataset ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?default_consent_ttl
    ?enable_consent_create_on_update ?id ?labels ?timeouts ~dataset
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?default_consent_ttl ?enable_consent_create_on_update ?id
      ?labels ?timeouts ~dataset ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
