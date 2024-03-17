(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudcontrolapi_resource__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cloudcontrolapi_resource__timeouts *)

type aws_cloudcontrolapi_resource = {
  desired_state : string prop;  (** desired_state *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop option; [@option]  (** role_arn *)
  schema : string prop option; [@option]  (** schema *)
  type_name : string prop;  (** type_name *)
  type_version_id : string prop option; [@option]
      (** type_version_id *)
  timeouts : aws_cloudcontrolapi_resource__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudcontrolapi_resource *)

let aws_cloudcontrolapi_resource ?id ?role_arn ?schema
    ?type_version_id ?timeouts ~desired_state ~type_name
    __resource_id =
  let __resource_type = "aws_cloudcontrolapi_resource" in
  let __resource =
    {
      desired_state;
      id;
      role_arn;
      schema;
      type_name;
      type_version_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudcontrolapi_resource __resource);
  ()
