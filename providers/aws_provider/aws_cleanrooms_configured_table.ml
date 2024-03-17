(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cleanrooms_configured_table__table_reference = {
  database_name : string prop;  (** database_name *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_configured_table__table_reference *)

type aws_cleanrooms_configured_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_cleanrooms_configured_table__timeouts *)

type aws_cleanrooms_configured_table = {
  allowed_columns : string prop list;  (** allowed_columns *)
  analysis_method : string prop;  (** analysis_method *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  table_reference :
    aws_cleanrooms_configured_table__table_reference list;
  timeouts : aws_cleanrooms_configured_table__timeouts option;
}
[@@deriving yojson_of]
(** aws_cleanrooms_configured_table *)

let aws_cleanrooms_configured_table ?description ?id ?tags ?tags_all
    ?timeouts ~allowed_columns ~analysis_method ~name
    ~table_reference __resource_id =
  let __resource_type = "aws_cleanrooms_configured_table" in
  let __resource =
    {
      allowed_columns;
      analysis_method;
      description;
      id;
      name;
      tags;
      tags_all;
      table_reference;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cleanrooms_configured_table __resource);
  ()
