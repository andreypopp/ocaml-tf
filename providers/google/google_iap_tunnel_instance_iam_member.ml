(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_iap_tunnel_instance_iam_member = {
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  zone : string prop option; [@option]  (** zone *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_iap_tunnel_instance_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_iap_tunnel_instance_iam_member ?id ?project ?zone
    ~instance ~member ~role ~condition () :
    google_iap_tunnel_instance_iam_member =
  { id; instance; member; project; role; zone; condition }

type t = {
  etag : string prop;
  id : string prop;
  instance : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
  zone : string prop;
}

let register ?tf_module ?id ?project ?zone ~instance ~member ~role
    ~condition __resource_id =
  let __resource_type = "google_iap_tunnel_instance_iam_member" in
  let __resource =
    google_iap_tunnel_instance_iam_member ?id ?project ?zone
      ~instance ~member ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_tunnel_instance_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       member = Prop.computed __resource_type __resource_id "member";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
