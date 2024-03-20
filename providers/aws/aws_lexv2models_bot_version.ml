(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type locale_specification = {
  source_bot_version : string prop;  (** source_bot_version *)
}
[@@deriving yojson_of]

type aws_lexv2models_bot_version = {
  bot_id : string prop;  (** bot_id *)
  bot_version : string prop option; [@option]  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  locale_specification : (string * locale_specification) list;
      (** locale_specification *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lexv2models_bot_version *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_lexv2models_bot_version ?bot_version ?description ?timeouts
    ~bot_id ~locale_specification () : aws_lexv2models_bot_version =
  {
    bot_id;
    bot_version;
    description;
    locale_specification;
    timeouts;
  }

type t = {
  bot_id : string prop;
  bot_version : string prop;
  description : string prop;
  id : string prop;
  locale_specification : (string * locale_specification) list prop;
}

let make ?bot_version ?description ?timeouts ~bot_id
    ~locale_specification __id =
  let __type = "aws_lexv2models_bot_version" in
  let __attrs =
    ({
       bot_id = Prop.computed __type __id "bot_id";
       bot_version = Prop.computed __type __id "bot_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       locale_specification =
         Prop.computed __type __id "locale_specification";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lexv2models_bot_version
        (aws_lexv2models_bot_version ?bot_version ?description
           ?timeouts ~bot_id ~locale_specification ());
    attrs = __attrs;
  }

let register ?tf_module ?bot_version ?description ?timeouts ~bot_id
    ~locale_specification __id =
  let (r : _ Tf_core.resource) =
    make ?bot_version ?description ?timeouts ~bot_id
      ~locale_specification __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
