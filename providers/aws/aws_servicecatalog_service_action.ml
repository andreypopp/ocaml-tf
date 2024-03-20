(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type definition = {
  assume_role : string prop option; [@option]  (** assume_role *)
  name : string prop;  (** name *)
  parameters : string prop option; [@option]  (** parameters *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** definition *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_servicecatalog_service_action = {
  accept_language : string prop option; [@option]
      (** accept_language *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  definition : definition list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_servicecatalog_service_action *)

let definition ?assume_role ?parameters ?type_ ~name ~version () :
    definition =
  { assume_role; name; parameters; type_; version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_servicecatalog_service_action ?accept_language ?description
    ?id ?timeouts ~name ~definition () :
    aws_servicecatalog_service_action =
  { accept_language; description; id; name; definition; timeouts }

type t = {
  accept_language : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?accept_language ?description ?id ?timeouts ~name
    ~definition __id =
  let __type = "aws_servicecatalog_service_action" in
  let __attrs =
    ({
       accept_language = Prop.computed __type __id "accept_language";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_service_action
        (aws_servicecatalog_service_action ?accept_language
           ?description ?id ?timeouts ~name ~definition ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?description ?id ?timeouts
    ~name ~definition __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?description ?id ?timeouts ~name
      ~definition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
