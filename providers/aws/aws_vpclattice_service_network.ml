(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_service_network = {
  auth_type : string prop option; [@option]  (** auth_type *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpclattice_service_network *)

let aws_vpclattice_service_network ?auth_type ?id ?tags ?tags_all
    ~name () : aws_vpclattice_service_network =
  { auth_type; id; name; tags; tags_all }

type t = {
  arn : string prop;
  auth_type : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?auth_type ?id ?tags ?tags_all ~name
    __resource_id =
  let __resource_type = "aws_vpclattice_service_network" in
  let __resource =
    aws_vpclattice_service_network ?auth_type ?id ?tags ?tags_all
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_service_network __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auth_type =
         Prop.computed __resource_type __resource_id "auth_type";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
