(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_opensearchserverless_vpc_endpoint = {
  name : string prop;  (** name *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_vpc_endpoint *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_opensearchserverless_vpc_endpoint ?security_group_ids
    ?timeouts ~name ~subnet_ids ~vpc_id () :
    aws_opensearchserverless_vpc_endpoint =
  { name; security_group_ids; subnet_ids; vpc_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

let make ?security_group_ids ?timeouts ~name ~subnet_ids ~vpc_id __id
    =
  let __type = "aws_opensearchserverless_vpc_endpoint" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       security_group_ids =
         Prop.computed __type __id "security_group_ids";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_vpc_endpoint
        (aws_opensearchserverless_vpc_endpoint ?security_group_ids
           ?timeouts ~name ~subnet_ids ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?security_group_ids ?timeouts ~name
    ~subnet_ids ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?security_group_ids ?timeouts ~name ~subnet_ids ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
