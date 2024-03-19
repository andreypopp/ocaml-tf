(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type data_privacy = {
  child_directed : bool prop;  (** child_directed *)
}
[@@deriving yojson_of]
(** data_privacy *)

type members = {
  alias_id : string prop;  (** alias_id *)
  alias_name : string prop;  (** alias_name *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** members *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lexv2models_bot = {
  description : string prop option; [@option]  (** description *)
  idle_session_ttl_in_seconds : float prop;
      (** idle_session_ttl_in_seconds *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  test_bot_alias_tags : (string * string prop) list option; [@option]
      (** test_bot_alias_tags *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  data_privacy : data_privacy list;
  members : members list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lexv2models_bot *)

let data_privacy ~child_directed () : data_privacy =
  { child_directed }

let members ~alias_id ~alias_name ~id ~name ~version () : members =
  { alias_id; alias_name; id; name; version }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lexv2models_bot ?description ?tags ?test_bot_alias_tags
    ?type_ ?timeouts ~idle_session_ttl_in_seconds ~name ~role_arn
    ~data_privacy ~members () : aws_lexv2models_bot =
  {
    description;
    idle_session_ttl_in_seconds;
    name;
    role_arn;
    tags;
    test_bot_alias_tags;
    type_;
    data_privacy;
    members;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  test_bot_alias_tags : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?description ?tags ?test_bot_alias_tags
    ?type_ ?timeouts ~idle_session_ttl_in_seconds ~name ~role_arn
    ~data_privacy ~members __resource_id =
  let __resource_type = "aws_lexv2models_bot" in
  let __resource =
    aws_lexv2models_bot ?description ?tags ?test_bot_alias_tags
      ?type_ ?timeouts ~idle_session_ttl_in_seconds ~name ~role_arn
      ~data_privacy ~members ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lexv2models_bot __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       idle_session_ttl_in_seconds =
         Prop.computed __resource_type __resource_id
           "idle_session_ttl_in_seconds";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       test_bot_alias_tags =
         Prop.computed __resource_type __resource_id
           "test_bot_alias_tags";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
