(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create: string  prop option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete: string  prop option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update: string  prop option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
} [@@deriving yojson_of]
(** timeouts *)

type aws_quicksight_vpc_connection = {
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  dns_resolvers: string   prop list option; [@option] (** dns_resolvers *)
  name: string prop;  (** name *)
  role_arn: string prop;  (** role_arn *)
  security_group_ids: string  prop list;  (** security_group_ids *)
  subnet_ids: string  prop list;  (** subnet_ids *)
  tags: (string * string   prop) list option; [@option] (** tags *)
  vpc_connection_id: string prop;  (** vpc_connection_id *)
  timeouts: timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_vpc_connection *)

let timeouts ?create ?delete ?update () =
  ({
    create;
    delete;
    update;
  } : timeouts);;

let aws_quicksight_vpc_connection ?aws_account_id ?dns_resolvers ?tags ?timeouts ~name ~role_arn ~security_group_ids ~subnet_ids ~vpc_connection_id () =
  ({
    aws_account_id;
    dns_resolvers;
    name;
    role_arn;
    security_group_ids;
    subnet_ids;
    tags;
    vpc_connection_id;
    timeouts;
  } : aws_quicksight_vpc_connection);;

type t = {
  arn: string prop;
  availability_status: string prop;
  aws_account_id: string prop;
  dns_resolvers: string list prop;
  id: string prop;
  name: string prop;
  role_arn: string prop;
  security_group_ids: string list prop;
  subnet_ids: string list prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
  vpc_connection_id: string prop;
}

let make ?aws_account_id ?dns_resolvers ?tags ?timeouts ~name ~role_arn ~security_group_ids ~subnet_ids ~vpc_connection_id __id =
  let __type = "aws_quicksight_vpc_connection" in
  let __attrs = ({
    arn = Prop.computed __type __id "arn";
    availability_status = Prop.computed __type __id "availability_status";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    dns_resolvers = Prop.computed __type __id "dns_resolvers";
    id = Prop.computed __type __id "id";
    name = Prop.computed __type __id "name";
    role_arn = Prop.computed __type __id "role_arn";
    security_group_ids = Prop.computed __type __id "security_group_ids";
    subnet_ids = Prop.computed __type __id "subnet_ids";
    tags = Prop.computed __type __id "tags";
    tags_all = Prop.computed __type __id "tags_all";
    vpc_connection_id = Prop.computed __type __id "vpc_connection_id";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_vpc_connection (aws_quicksight_vpc_connection ?aws_account_id ?dns_resolvers ?tags ?timeouts ~name ~role_arn ~security_group_ids ~subnet_ids ~vpc_connection_id ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?dns_resolvers ?tags ?timeouts ~name ~role_arn ~security_group_ids ~subnet_ids ~vpc_connection_id __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?dns_resolvers ?tags ?timeouts ~name ~role_arn ~security_group_ids ~subnet_ids ~vpc_connection_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

