(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type action__fixed_response = {
  status_code : float prop;  (** status_code *)
}
[@@deriving yojson_of]
(** action__fixed_response *)

type action__forward__target_groups = {
  target_group_identifier : string prop;
      (** target_group_identifier *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** action__forward__target_groups *)

type action__forward = {
  target_groups : action__forward__target_groups list;
}
[@@deriving yojson_of]
(** action__forward *)

type action = {
  fixed_response : action__fixed_response list;
  forward : action__forward list;
}
[@@deriving yojson_of]
(** action *)

type match__http_match__header_matches__match = {
  contains : string prop option; [@option]  (** contains *)
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** match__http_match__header_matches__match *)

type match__http_match__header_matches = {
  case_sensitive : bool prop option; [@option]  (** case_sensitive *)
  name : string prop;  (** name *)
  match_ : match__http_match__header_matches__match list;
}
[@@deriving yojson_of]
(** match__http_match__header_matches *)

type match__http_match__path_match__match = {
  exact : string prop option; [@option]  (** exact *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** match__http_match__path_match__match *)

type match__http_match__path_match = {
  case_sensitive : bool prop option; [@option]  (** case_sensitive *)
  match_ : match__http_match__path_match__match list;
}
[@@deriving yojson_of]
(** match__http_match__path_match *)

type match__http_match = {
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  header_matches : match__http_match__header_matches list;
  path_match : match__http_match__path_match list;
}
[@@deriving yojson_of]
(** match__http_match *)

type match_ = { http_match : match__http_match list }
[@@deriving yojson_of]
(** match *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpclattice_listener_rule = {
  id : string prop option; [@option]  (** id *)
  listener_identifier : string prop;  (** listener_identifier *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  service_identifier : string prop;  (** service_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action : action list;
  match_ : match_ list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_listener_rule *)

let action__fixed_response ~status_code () : action__fixed_response =
  { status_code }

let action__forward__target_groups ?weight ~target_group_identifier
    () : action__forward__target_groups =
  { target_group_identifier; weight }

let action__forward ~target_groups () : action__forward =
  { target_groups }

let action ~fixed_response ~forward () : action =
  { fixed_response; forward }

let match__http_match__header_matches__match ?contains ?exact ?prefix
    () : match__http_match__header_matches__match =
  { contains; exact; prefix }

let match__http_match__header_matches ?case_sensitive ~name ~match_
    () : match__http_match__header_matches =
  { case_sensitive; name; match_ }

let match__http_match__path_match__match ?exact ?prefix () :
    match__http_match__path_match__match =
  { exact; prefix }

let match__http_match__path_match ?case_sensitive ~match_ () :
    match__http_match__path_match =
  { case_sensitive; match_ }

let match__http_match ?method_ ~header_matches ~path_match () :
    match__http_match =
  { method_; header_matches; path_match }

let match_ ~http_match () : match_ = { http_match }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_listener_rule ?id ?tags ?tags_all ?timeouts
    ~listener_identifier ~name ~priority ~service_identifier ~action
    ~match_ () : aws_vpclattice_listener_rule =
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

type t = {
  arn : string prop;
  id : string prop;
  listener_identifier : string prop;
  name : string prop;
  priority : float prop;
  rule_id : string prop;
  service_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~listener_identifier ~name ~priority ~service_identifier ~action
    ~match_ __resource_id =
  let __resource_type = "aws_vpclattice_listener_rule" in
  let __resource =
    aws_vpclattice_listener_rule ?id ?tags ?tags_all ?timeouts
      ~listener_identifier ~name ~priority ~service_identifier
      ~action ~match_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_listener_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       listener_identifier =
         Prop.computed __resource_type __resource_id
           "listener_identifier";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       rule_id =
         Prop.computed __resource_type __resource_id "rule_id";
       service_identifier =
         Prop.computed __resource_type __resource_id
           "service_identifier";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
