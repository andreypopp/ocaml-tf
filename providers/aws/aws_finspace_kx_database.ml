(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_finspace_kx_database = {
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_finspace_kx_database *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_finspace_kx_database ?description ?id ?tags ?tags_all
    ?timeouts ~environment_id ~name () : aws_finspace_kx_database =
  { description; environment_id; id; name; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  created_timestamp : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~environment_id ~name __resource_id =
  let __resource_type = "aws_finspace_kx_database" in
  let __resource =
    aws_finspace_kx_database ?description ?id ?tags ?tags_all
      ?timeouts ~environment_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_finspace_kx_database __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_timestamp =
         Prop.computed __resource_type __resource_id
           "created_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_timestamp =
         Prop.computed __resource_type __resource_id
           "last_modified_timestamp";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
