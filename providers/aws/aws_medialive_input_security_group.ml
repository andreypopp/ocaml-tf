(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type whitelist_rules = { cidr : string prop  (** cidr *) }
[@@deriving yojson_of]
(** whitelist_rules *)

type aws_medialive_input_security_group = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
  whitelist_rules : whitelist_rules list;
}
[@@deriving yojson_of]
(** aws_medialive_input_security_group *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let whitelist_rules ~cidr () : whitelist_rules = { cidr }

let aws_medialive_input_security_group ?id ?tags ?tags_all ?timeouts
    ~whitelist_rules () : aws_medialive_input_security_group =
  { id; tags; tags_all; timeouts; whitelist_rules }

type t = {
  arn : string prop;
  id : string prop;
  inputs : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~whitelist_rules __id =
  let __type = "aws_medialive_input_security_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       inputs = Prop.computed __type __id "inputs";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_medialive_input_security_group
        (aws_medialive_input_security_group ?id ?tags ?tags_all
           ?timeouts ~whitelist_rules ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~whitelist_rules __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~whitelist_rules __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
