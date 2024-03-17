(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_layer_version_permission = {
  action : string prop;  (** action *)
  id : string prop option; [@option]  (** id *)
  layer_name : string prop;  (** layer_name *)
  organization_id : string prop option; [@option]
      (** organization_id *)
  principal : string prop;  (** principal *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  statement_id : string prop;  (** statement_id *)
  version_number : float prop;  (** version_number *)
}
[@@deriving yojson_of]
(** aws_lambda_layer_version_permission *)

type t = {
  action : string prop;
  id : string prop;
  layer_name : string prop;
  organization_id : string prop;
  policy : string prop;
  principal : string prop;
  revision_id : string prop;
  skip_destroy : bool prop;
  statement_id : string prop;
  version_number : float prop;
}

let aws_lambda_layer_version_permission ?id ?organization_id
    ?skip_destroy ~action ~layer_name ~principal ~statement_id
    ~version_number __resource_id =
  let __resource_type = "aws_lambda_layer_version_permission" in
  let __resource =
    ({
       action;
       id;
       layer_name;
       organization_id;
       principal;
       skip_destroy;
       statement_id;
       version_number;
     }
      : aws_lambda_layer_version_permission)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_layer_version_permission __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       id = Prop.computed __resource_type __resource_id "id";
       layer_name =
         Prop.computed __resource_type __resource_id "layer_name";
       organization_id =
         Prop.computed __resource_type __resource_id
           "organization_id";
       policy = Prop.computed __resource_type __resource_id "policy";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       revision_id =
         Prop.computed __resource_type __resource_id "revision_id";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       statement_id =
         Prop.computed __resource_type __resource_id "statement_id";
       version_number =
         Prop.computed __resource_type __resource_id "version_number";
     }
      : t)
  in
  __resource_attributes
