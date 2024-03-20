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

type aws_workspaces_connection_alias = {
  connection_string : string prop;
      (** The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com. *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_workspaces_connection_alias *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_workspaces_connection_alias ?tags ?timeouts
    ~connection_string () : aws_workspaces_connection_alias =
  { connection_string; tags; timeouts }

type t = {
  connection_string : string prop;
  id : string prop;
  owner_account_id : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?timeouts ~connection_string __id =
  let __type = "aws_workspaces_connection_alias" in
  let __attrs =
    ({
       connection_string =
         Prop.computed __type __id "connection_string";
       id = Prop.computed __type __id "id";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_workspaces_connection_alias
        (aws_workspaces_connection_alias ?tags ?timeouts
           ~connection_string ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?timeouts ~connection_string __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?timeouts ~connection_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
