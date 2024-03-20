(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_tag_option = {
  active : bool prop option; [@option]  (** active *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_tag_option *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_tag_option ?active ?id ?timeouts ~key ~value
    () : aws_servicecatalog_tag_option =
  { active; id; key; value; timeouts }

type t = {
  active : bool prop;
  id : string prop;
  key : string prop;
  owner : string prop;
  value : string prop;
}

let make ?active ?id ?timeouts ~key ~value __id =
  let __type = "aws_servicecatalog_tag_option" in
  let __attrs =
    ({
       active = Prop.computed __type __id "active";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       owner = Prop.computed __type __id "owner";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_tag_option
        (aws_servicecatalog_tag_option ?active ?id ?timeouts ~key
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?active ?id ?timeouts ~key ~value __id =
  let (r : _ Tf_core.resource) =
    make ?active ?id ?timeouts ~key ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
