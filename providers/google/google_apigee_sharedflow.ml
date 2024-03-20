(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type meta_data = {
  created_at : string prop;  (** created_at *)
  last_modified_at : string prop;  (** last_modified_at *)
  sub_type : string prop;  (** sub_type *)
}
[@@deriving yojson_of]

type google_apigee_sharedflow = {
  config_bundle : string prop;  (** Path to the config zip bundle *)
  detect_md5hash : string prop option; [@option]
      (** A hash of local config bundle in string, user needs to use a Terraform Hash function of their choice. A change in hash will trigger an update. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The ID of the shared flow. *)
  org_id : string prop;
      (** The Apigee Organization name associated with the Apigee instance. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_sharedflow *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_sharedflow ?detect_md5hash ?id ?timeouts
    ~config_bundle ~name ~org_id () : google_apigee_sharedflow =
  { config_bundle; detect_md5hash; id; name; org_id; timeouts }

type t = {
  config_bundle : string prop;
  detect_md5hash : string prop;
  id : string prop;
  latest_revision_id : string prop;
  md5hash : string prop;
  meta_data : meta_data list prop;
  name : string prop;
  org_id : string prop;
  revision : string list prop;
}

let make ?detect_md5hash ?id ?timeouts ~config_bundle ~name ~org_id
    __id =
  let __type = "google_apigee_sharedflow" in
  let __attrs =
    ({
       config_bundle = Prop.computed __type __id "config_bundle";
       detect_md5hash = Prop.computed __type __id "detect_md5hash";
       id = Prop.computed __type __id "id";
       latest_revision_id =
         Prop.computed __type __id "latest_revision_id";
       md5hash = Prop.computed __type __id "md5hash";
       meta_data = Prop.computed __type __id "meta_data";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       revision = Prop.computed __type __id "revision";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_sharedflow
        (google_apigee_sharedflow ?detect_md5hash ?id ?timeouts
           ~config_bundle ~name ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?detect_md5hash ?id ?timeouts ~config_bundle
    ~name ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?detect_md5hash ?id ?timeouts ~config_bundle ~name ~org_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
