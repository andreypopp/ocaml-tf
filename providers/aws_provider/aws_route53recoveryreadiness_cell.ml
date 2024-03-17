(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53recoveryreadiness_cell__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_cell__timeouts *)

type aws_route53recoveryreadiness_cell = {
  cell_name : string;  (** cell_name *)
  cells : string list option; [@option]  (** cells *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_route53recoveryreadiness_cell__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_cell *)

let aws_route53recoveryreadiness_cell ?cells ?tags ?timeouts
    ~cell_name __resource_id =
  let __resource_type = "aws_route53recoveryreadiness_cell" in
  let __resource = { cell_name; cells; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoveryreadiness_cell __resource);
  ()
