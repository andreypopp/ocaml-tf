(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?tags ?test_bot_alias_tags ?type_ ?timeouts
    ~idle_session_ttl_in_seconds ~name ~role_arn ~data_privacy
    ~members __id =
  let __type = "aws_lexv2models_bot" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       idle_session_ttl_in_seconds =
         Prop.computed __type __id "idle_session_ttl_in_seconds";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       test_bot_alias_tags =
         Prop.computed __type __id "test_bot_alias_tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_bot
        (aws_lexv2models_bot ?description ?tags ?test_bot_alias_tags
           ?type_ ?timeouts ~idle_session_ttl_in_seconds ~name
           ~role_arn ~data_privacy ~members ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ?test_bot_alias_tags
    ?type_ ?timeouts ~idle_session_ttl_in_seconds ~name ~role_arn
    ~data_privacy ~members __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ?test_bot_alias_tags ?type_ ?timeouts
      ~idle_session_ttl_in_seconds ~name ~role_arn ~data_privacy
      ~members __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
