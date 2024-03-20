(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source = {
  accounts : string prop list option; [@option]  (** accounts *)
  regions : string prop list;  (** regions *)
  source_name : string prop;  (** source_name *)
  source_version : string prop option; [@option]
      (** source_version *)
}
[@@deriving yojson_of]
(** source *)

type aws_securitylake_aws_log_source = { source : source list }
[@@deriving yojson_of]
(** aws_securitylake_aws_log_source *)

let source ?accounts ?source_version ~regions ~source_name () :
    source =
  { accounts; regions; source_name; source_version }

let aws_securitylake_aws_log_source ~source () :
    aws_securitylake_aws_log_source =
  { source }

type t = { id : string prop }

let make ~source __id =
  let __type = "aws_securitylake_aws_log_source" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_aws_log_source
        (aws_securitylake_aws_log_source ~source ());
    attrs = __attrs;
  }

let register ?tf_module ~source __id =
  let (r : _ Tf_core.resource) = make ~source __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
