(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rbin_rule__lock_configuration__unlock_delay = {
  unlock_delay_unit : string prop;  (** unlock_delay_unit *)
  unlock_delay_value : float prop;  (** unlock_delay_value *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__lock_configuration__unlock_delay *)

type aws_rbin_rule__lock_configuration = {
  unlock_delay : aws_rbin_rule__lock_configuration__unlock_delay list;
}
[@@deriving yojson_of]
(** aws_rbin_rule__lock_configuration *)

type aws_rbin_rule__resource_tags = {
  resource_tag_key : string prop;  (** resource_tag_key *)
  resource_tag_value : string prop option; [@option]
      (** resource_tag_value *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__resource_tags *)

type aws_rbin_rule__retention_period = {
  retention_period_unit : string prop;  (** retention_period_unit *)
  retention_period_value : float prop;  (** retention_period_value *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__retention_period *)

type aws_rbin_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_rbin_rule__timeouts *)

type aws_rbin_rule = {
  description : string prop option; [@option]  (** description *)
  resource_type : string prop;  (** resource_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  lock_configuration : aws_rbin_rule__lock_configuration list;
  resource_tags : aws_rbin_rule__resource_tags list;
  retention_period : aws_rbin_rule__retention_period list;
  timeouts : aws_rbin_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_rbin_rule *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  lock_end_time : string prop;
  lock_state : string prop;
  resource_type : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_rbin_rule ?description ?tags ?tags_all ?timeouts
    ~resource_type ~lock_configuration ~resource_tags
    ~retention_period __resource_id =
  let __resource_type = "aws_rbin_rule" in
  let __resource =
    ({
       description;
       resource_type;
       tags;
       tags_all;
       lock_configuration;
       resource_tags;
       retention_period;
       timeouts;
     }
      : aws_rbin_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rbin_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       lock_end_time =
         Prop.computed __resource_type __resource_id "lock_end_time";
       lock_state =
         Prop.computed __resource_type __resource_id "lock_state";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
