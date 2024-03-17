(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_license_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_grafana_license_association__timeouts *)

type aws_grafana_license_association = {
  id : string prop option; [@option]  (** id *)
  license_type : string prop;  (** license_type *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : aws_grafana_license_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_license_association *)

type t = {
  free_trial_expiration : string prop;
  id : string prop;
  license_expiration : string prop;
  license_type : string prop;
  workspace_id : string prop;
}

let aws_grafana_license_association ?id ?timeouts ~license_type
    ~workspace_id __resource_id =
  let __resource_type = "aws_grafana_license_association" in
  let __resource =
    ({ id; license_type; workspace_id; timeouts }
      : aws_grafana_license_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_license_association __resource);
  let __resource_attributes =
    ({
       free_trial_expiration =
         Prop.computed __resource_type __resource_id
           "free_trial_expiration";
       id = Prop.computed __resource_type __resource_id "id";
       license_expiration =
         Prop.computed __resource_type __resource_id
           "license_expiration";
       license_type =
         Prop.computed __resource_type __resource_id "license_type";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
