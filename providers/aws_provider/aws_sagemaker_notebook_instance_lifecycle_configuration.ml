(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_notebook_instance_lifecycle_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  on_create : string prop option; [@option]  (** on_create *)
  on_start : string prop option; [@option]  (** on_start *)
}
[@@deriving yojson_of]
(** aws_sagemaker_notebook_instance_lifecycle_configuration *)

let aws_sagemaker_notebook_instance_lifecycle_configuration ?id ?name
    ?on_create ?on_start __resource_id =
  let __resource_type =
    "aws_sagemaker_notebook_instance_lifecycle_configuration"
  in
  let __resource = { id; name; on_create; on_start } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_notebook_instance_lifecycle_configuration
       __resource);
  ()
