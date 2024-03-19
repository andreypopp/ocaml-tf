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

type google_scc_source_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  organization : string prop;  (** organization *)
  role : string prop;  (** role *)
  source : string prop;  (** source *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_scc_source_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_scc_source_iam_member ?id ~member ~organization ~role
    ~source ~condition () : google_scc_source_iam_member =
  { id; member; organization; role; source; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  organization : string prop;
  role : string prop;
  source : string prop;
}

let register ?tf_module ?id ~member ~organization ~role ~source
    ~condition __resource_id =
  let __resource_type = "google_scc_source_iam_member" in
  let __resource =
    google_scc_source_iam_member ?id ~member ~organization ~role
      ~source ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source_iam_member __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       member = Prop.computed __resource_type __resource_id "member";
       organization =
         Prop.computed __resource_type __resource_id "organization";
       role = Prop.computed __resource_type __resource_id "role";
       source = Prop.computed __resource_type __resource_id "source";
     }
      : t)
  in
  __resource_attributes
