(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_netapp_kmsconfig = {
  crypto_key_name : string prop;
      (** Resource name of the KMS key to use. Only regional keys are supported. Format: 'projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}'. *)
  description : string prop option; [@option]
      (** Description for the CMEK policy. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. Example: '{ owner: Bob, department: finance, purpose: testing }'.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** Name of the policy location. CMEK policies apply to the whole region. *)
  name : string prop;  (** Name of the CMEK policy. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_netapp_kmsconfig *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_netapp_kmsconfig ?description ?id ?labels ?project
    ?timeouts ~crypto_key_name ~location ~name () :
    google_netapp_kmsconfig =
  {
    crypto_key_name;
    description;
    id;
    labels;
    location;
    name;
    project;
    timeouts;
  }

type t = {
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  instructions : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?project ?timeouts ~crypto_key_name
    ~location ~name __id =
  let __type = "google_netapp_kmsconfig" in
  let __attrs =
    ({
       crypto_key_name = Prop.computed __type __id "crypto_key_name";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       instructions = Prop.computed __type __id "instructions";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_netapp_kmsconfig
        (google_netapp_kmsconfig ?description ?id ?labels ?project
           ?timeouts ~crypto_key_name ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~crypto_key_name ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~crypto_key_name
      ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
