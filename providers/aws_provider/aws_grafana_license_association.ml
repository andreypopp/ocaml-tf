(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_license_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_grafana_license_association__timeouts *)

type aws_grafana_license_association = {
  license_type : string;  (** license_type *)
  workspace_id : string;  (** workspace_id *)
  timeouts : aws_grafana_license_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_license_association *)

let aws_grafana_license_association ?timeouts ~license_type
    ~workspace_id __resource_id =
  let __resource_type = "aws_grafana_license_association" in
  let __resource = { license_type; workspace_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_license_association __resource);
  ()
