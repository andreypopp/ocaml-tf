(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rbin_rule__lock_configuration__unlock_delay = {
  unlock_delay_unit : string;  (** unlock_delay_unit *)
  unlock_delay_value : float;  (** unlock_delay_value *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__lock_configuration__unlock_delay *)

type aws_rbin_rule__lock_configuration = {
  unlock_delay : aws_rbin_rule__lock_configuration__unlock_delay list;
}
[@@deriving yojson_of]
(** aws_rbin_rule__lock_configuration *)

type aws_rbin_rule__resource_tags = {
  resource_tag_key : string;  (** resource_tag_key *)
  resource_tag_value : string option; [@option]
      (** resource_tag_value *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__resource_tags *)

type aws_rbin_rule__retention_period = {
  retention_period_unit : string;  (** retention_period_unit *)
  retention_period_value : float;  (** retention_period_value *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__retention_period *)

type aws_rbin_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__timeouts *)

type aws_rbin_rule = {
  resource_type : string;  (** resource_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  lock_configuration : aws_rbin_rule__lock_configuration list;
  resource_tags : aws_rbin_rule__resource_tags list;
  retention_period : aws_rbin_rule__retention_period list;
  timeouts : aws_rbin_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_rbin_rule *)

let aws_rbin_rule ?tags ?timeouts ~resource_type ~lock_configuration
    ~resource_tags ~retention_period __resource_id =
  let __resource_type = "aws_rbin_rule" in
  let __resource =
    {
      resource_type;
      tags;
      lock_configuration;
      resource_tags;
      retention_period;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rbin_rule __resource);
  ()
