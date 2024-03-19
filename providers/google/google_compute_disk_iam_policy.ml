(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_disk_iam_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  zone : string prop option; [@option]  (** zone *)
}
[@@deriving yojson_of]
(** google_compute_disk_iam_policy *)

let google_compute_disk_iam_policy ?id ?project ?zone ~name
    ~policy_data () : google_compute_disk_iam_policy =
  { id; name; policy_data; project; zone }

type t = {
  etag : string prop;
  id : string prop;
  name : string prop;
  policy_data : string prop;
  project : string prop;
  zone : string prop;
}

let register ?tf_module ?id ?project ?zone ~name ~policy_data
    __resource_id =
  let __resource_type = "google_compute_disk_iam_policy" in
  let __resource =
    google_compute_disk_iam_policy ?id ?project ?zone ~name
      ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_disk_iam_policy __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
