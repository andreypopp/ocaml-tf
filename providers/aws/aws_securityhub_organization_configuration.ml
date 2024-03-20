(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type organization_configuration = {
  configuration_type : string prop;  (** configuration_type *)
}
[@@deriving yojson_of]
(** organization_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_securityhub_organization_configuration = {
  auto_enable : bool prop;  (** auto_enable *)
  auto_enable_standards : string prop option; [@option]
      (** auto_enable_standards *)
  id : string prop option; [@option]  (** id *)
  organization_configuration : organization_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_securityhub_organization_configuration *)

let organization_configuration ~configuration_type () :
    organization_configuration =
  { configuration_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_securityhub_organization_configuration ?auto_enable_standards
    ?id ?timeouts ~auto_enable ~organization_configuration () :
    aws_securityhub_organization_configuration =
  {
    auto_enable;
    auto_enable_standards;
    id;
    organization_configuration;
    timeouts;
  }

type t = {
  auto_enable : bool prop;
  auto_enable_standards : string prop;
  id : string prop;
}

let make ?auto_enable_standards ?id ?timeouts ~auto_enable
    ~organization_configuration __id =
  let __type = "aws_securityhub_organization_configuration" in
  let __attrs =
    ({
       auto_enable = Prop.computed __type __id "auto_enable";
       auto_enable_standards =
         Prop.computed __type __id "auto_enable_standards";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_organization_configuration
        (aws_securityhub_organization_configuration
           ?auto_enable_standards ?id ?timeouts ~auto_enable
           ~organization_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_enable_standards ?id ?timeouts
    ~auto_enable ~organization_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?auto_enable_standards ?id ?timeouts ~auto_enable
      ~organization_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
