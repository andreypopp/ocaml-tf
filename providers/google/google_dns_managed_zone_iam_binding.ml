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

type google_dns_managed_zone_iam_binding = {
  id : string prop option; [@option]  (** id *)
  managed_zone : string prop;  (** managed_zone *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_dns_managed_zone_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_dns_managed_zone_iam_binding ?id ?project ~managed_zone
    ~members ~role ~condition () :
    google_dns_managed_zone_iam_binding =
  { id; managed_zone; members; project; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  managed_zone : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

let register ?tf_module ?id ?project ~managed_zone ~members ~role
    ~condition __resource_id =
  let __resource_type = "google_dns_managed_zone_iam_binding" in
  let __resource =
    google_dns_managed_zone_iam_binding ?id ?project ~managed_zone
      ~members ~role ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_managed_zone_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       managed_zone =
         Prop.computed __resource_type __resource_id "managed_zone";
       members =
         Prop.computed __resource_type __resource_id "members";
       project =
         Prop.computed __resource_type __resource_id "project";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
