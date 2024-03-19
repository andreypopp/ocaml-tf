(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dataplex_datascan_iam_policy = {
  data_scan_id : string prop;  (** data_scan_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_dataplex_datascan_iam_policy *)

let google_dataplex_datascan_iam_policy ?id ?location ?project
    ~data_scan_id ~policy_data () :
    google_dataplex_datascan_iam_policy =
  { data_scan_id; id; location; policy_data; project }

type t = {
  data_scan_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let register ?tf_module ?id ?location ?project ~data_scan_id
    ~policy_data __resource_id =
  let __resource_type = "google_dataplex_datascan_iam_policy" in
  let __resource =
    google_dataplex_datascan_iam_policy ?id ?location ?project
      ~data_scan_id ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dataplex_datascan_iam_policy __resource);
  let __resource_attributes =
    ({
       data_scan_id =
         Prop.computed __resource_type __resource_id "data_scan_id";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
