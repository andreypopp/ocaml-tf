(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_listener_rule__action__fixed_response = {
  status_code : float prop;  (** status_code *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__action__fixed_response *)

type aws_vpclattice_listener_rule__action__forward__target_groups = {
  target_group_identifier : string prop;
      (** target_group_identifier *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__action__forward__target_groups *)

type aws_vpclattice_listener_rule__action__forward = {
  target_groups :
    aws_vpclattice_listener_rule__action__forward__target_groups list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__action__forward *)

type aws_vpclattice_listener_rule__action = {
  fixed_response :
    aws_vpclattice_listener_rule__action__fixed_response list;
  forward : aws_vpclattice_listener_rule__action__forward list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__action *)

type aws_vpclattice_listener_rule__match__http_match__header_matches__match = {
  contains : string prop option; [@option]  (** contains *)
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__match__http_match__header_matches__match *)

type aws_vpclattice_listener_rule__match__http_match__header_matches = {
  case_sensitive : bool prop option; [@option]  (** case_sensitive *)
  name : string prop;  (** name *)
  match_ :
    aws_vpclattice_listener_rule__match__http_match__header_matches__match
    list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__match__http_match__header_matches *)

type aws_vpclattice_listener_rule__match__http_match__path_match__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__match__http_match__path_match__match *)

type aws_vpclattice_listener_rule__match__http_match__path_match = {
  case_sensitive : bool prop option; [@option]  (** case_sensitive *)
  match_ :
    aws_vpclattice_listener_rule__match__http_match__path_match__match
    list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__match__http_match__path_match *)

type aws_vpclattice_listener_rule__match__http_match = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  header_matches :
    aws_vpclattice_listener_rule__match__http_match__header_matches
    list;
  path_match :
    aws_vpclattice_listener_rule__match__http_match__path_match list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__match__http_match *)

type aws_vpclattice_listener_rule__match = {
  http_match : aws_vpclattice_listener_rule__match__http_match list;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__match *)

type aws_vpclattice_listener_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule__timeouts *)

type aws_vpclattice_listener_rule = {
  id : string prop option; [@option]  (** id *)
  listener_identifier : string prop;  (** listener_identifier *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_identifier : string prop;  (** service_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action : aws_vpclattice_listener_rule__action list;
  match_ : aws_vpclattice_listener_rule__match list;
  timeouts : aws_vpclattice_listener_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule *)

let aws_vpclattice_listener_rule ?id ?tags ?tags_all ?timeouts
    ~listener_identifier ~name ~priority ~service_identifier ~action
    ~match_ __resource_id =
  let __resource_type = "aws_vpclattice_listener_rule" in
  let __resource =
    {
      id;
      listener_identifier;
      name;
      priority;
      service_identifier;
      tags;
      tags_all;
      action;
      match_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_listener_rule __resource);
  ()
