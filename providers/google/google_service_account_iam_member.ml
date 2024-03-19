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

type google_service_account_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  service_account_id : string prop;  (** service_account_id *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_service_account_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_service_account_iam_member ?id ~member ~role
    ~service_account_id ~condition () :
    google_service_account_iam_member =
  { id; member; role; service_account_id; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  service_account_id : string prop;
}

let register ?tf_module ?id ~member ~role ~service_account_id
    ~condition __resource_id =
  let __resource_type = "google_service_account_iam_member" in
  let __resource =
    google_service_account_iam_member ?id ~member ~role
      ~service_account_id ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_account_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       role = Prop.computed __resource_type __resource_id "role";
       service_account_id =
         Prop.computed __resource_type __resource_id
           "service_account_id";
     }
      : t)
  in
  __resource_attributes
