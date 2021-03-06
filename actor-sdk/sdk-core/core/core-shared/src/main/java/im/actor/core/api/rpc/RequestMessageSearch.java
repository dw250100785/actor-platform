package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import im.actor.core.api.*;

public class RequestMessageSearch extends Request<ResponseMessageSearchResponse> {

    public static final int HEADER = 0xd9;
    public static RequestMessageSearch fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestMessageSearch(), data);
    }

    private ApiSearchCondition query;
    private List<ApiUpdateOptimization> optimizations;

    public RequestMessageSearch(@NotNull ApiSearchCondition query, @NotNull List<ApiUpdateOptimization> optimizations) {
        this.query = query;
        this.optimizations = optimizations;
    }

    public RequestMessageSearch() {

    }

    @NotNull
    public ApiSearchCondition getQuery() {
        return this.query;
    }

    @NotNull
    public List<ApiUpdateOptimization> getOptimizations() {
        return this.optimizations;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.query = ApiSearchCondition.fromBytes(values.getBytes(1));
        this.optimizations = new ArrayList<ApiUpdateOptimization>();
        for (int b : values.getRepeatedInt(2)) {
            optimizations.add(ApiUpdateOptimization.parse(b));
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.query == null) {
            throw new IOException();
        }

        writer.writeBytes(1, this.query.buildContainer());
        for (ApiUpdateOptimization i : this.optimizations) {
            writer.writeInt(2, i.getValue());
        }
    }

    @Override
    public String toString() {
        String res = "rpc MessageSearch{";
        res += "query=" + this.query;
        res += ", optimizations=" + this.optimizations;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
