(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option]  (** read *) }
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_organizations_access = {
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_organizations_access *)

let timeouts ?read () : timeouts = { read }

let aws_servicecatalog_organizations_access ?id ?timeouts ~enabled ()
    : aws_servicecatalog_organizations_access =
  { enabled; id; timeouts }

type t = { enabled : bool prop; id : string prop }

let make ?id ?timeouts ~enabled __id =
  let __type = "aws_servicecatalog_organizations_access" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_organizations_access
        (aws_servicecatalog_organizations_access ?id ?timeouts
           ~enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~enabled __id =
  let (r : _ Tf_core.resource) = make ?id ?timeouts ~enabled __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
