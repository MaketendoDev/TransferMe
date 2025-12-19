package net.maketendo.transferme.screens.widget;

import net.fabricmc.api.EnvType;
import net.fabricmc.api.Environment;
import net.minecraft.client.MinecraftClient;
import net.minecraft.client.gl.RenderPipelines;
import net.minecraft.client.gui.DrawContext;
import net.minecraft.client.gui.Element;
import net.minecraft.client.gui.Selectable;
import net.minecraft.client.gui.screen.Screen;
import net.minecraft.client.gui.widget.*;
import net.minecraft.text.Text;

import net.minecraft.util.Formatting;
import net.minecraft.util.Identifier;
import org.jetbrains.annotations.Nullable;

import java.util.List;

@Environment(EnvType.CLIENT)
public class WizardOptionListWidget extends ElementListWidget<WizardOptionListWidget.Component> {

    private static final int ROW_WIDTH = 310;
    private static final int ITEM_HEIGHT = 16;

    private final Screen screen;

    public WizardOptionListWidget(MinecraftClient client, Screen screen, ThreePartsLayoutWidget layout) {
        super(client, screen.width, layout.getContentHeight(), layout.getHeaderHeight(), ITEM_HEIGHT);
        this.screen = screen;
        this.centerListVertically = false;
    }

    public void addHeader(Text title) {
        addEntry(new Header(screen, title));
    }

    public void addInformation(Text title) {
        addEntry(new Information(screen, title));
    }

    public void addSpace(int height) {
        addEntry(new Space(height));
    }

    public void addIcon(Identifier texture) {
        addEntry(new Icon(this.screen, texture));
    }

    public void addSingleButton(ButtonWidget button) {
        addEntry(new CenteredButton(screen, button));
    }

    public void addSingle(ClickableWidget widget) {
        this.addEntry(new SingleWidgetEntry(this, widget));
    }

    public void addButtonPair(ButtonWidget left, @Nullable ButtonWidget right) {
        addEntry(new WidgetPair(screen, left, right));
    }

    @Override
    public int getRowWidth() {
        return ROW_WIDTH;
    }

    @Environment(EnvType.CLIENT)
    private static final class SingleWidgetEntry extends Component {

        private final WizardOptionListWidget list;
        private final ClickableWidget widget;

        private SingleWidgetEntry(
                WizardOptionListWidget list,
                ClickableWidget widget
        ) {
            this.list = list;
            this.widget = widget;
        }

        @Override
        public void render(
                DrawContext context,
                int mouseX,
                int mouseY,
                boolean hovered,
                float delta
        ) {
            int x = list.getRowLeft()
                    + (list.getRowWidth() - widget.getWidth()) / 2;

            widget.setPosition(x, this.getContentY());
            widget.render(context, mouseX, mouseY, delta);
        }

        @Override
        public List<? extends Element> children() {
            return List.of(widget);
        }

        @Override
        public List<? extends Selectable> selectableChildren() {
            return List.of(widget);
        }
    }

    @Environment(EnvType.CLIENT)
    protected abstract static class Component extends ElementListWidget.Entry<Component> {}

    @Environment(EnvType.CLIENT)
    protected static class Header extends Component {
        private final Screen screen;
        private final TextWidget title;

        protected Header(Screen screen, Text text) {
            this.screen = screen;
            this.title = new TextWidget(text, screen.getTextRenderer());
        }

        @Override
        public void render(DrawContext context, int mouseX, int mouseY, boolean hovered, float delta) {
            int textWidth = title.getWidth();
            title.setPosition((screen.width - textWidth) / 2, getContentY());
            title.render(context, mouseX, mouseY, delta);
        }

        @Override
        public List<? extends Element> children() {
            return List.of(title);
        }

        @Override
        public List<? extends Selectable> selectableChildren() {
            return List.of(title);
        }
    }

    @Environment(EnvType.CLIENT)
    protected static class Information extends Component {
        private final Screen screen;
        private final TextWidget text;

        protected Information(Screen screen, Text text) {
            this.screen = screen;
            this.text = new TextWidget(text, screen.getTextRenderer());
        }

        @Override
        public void render(DrawContext context, int mouseX, int mouseY, boolean hovered, float delta) {
            int textWidth = text.getWidth();
            text.setPosition((screen.width - textWidth) / 2, getContentY());
            text.render(context, mouseX, mouseY, delta);
        }

        @Override
        public List<? extends Element> children() {
            return List.of(text);
        }

        @Override
        public List<? extends Selectable> selectableChildren() {
            return List.of(text);
        }
    }

    @Environment(EnvType.CLIENT)
    protected static class Space extends Component {
        private final int height;

        protected Space(int height) {
            this.height = height;
        }

        @Override
        public void render(DrawContext context, int mouseX, int mouseY, boolean hovered, float delta) {
        }

        @Override
        public List<? extends Element> children() { return List.of(); }

        @Override
        public List<? extends Selectable> selectableChildren() { return List.of(); }
    }

    @Environment(EnvType.CLIENT)
    protected static class CenteredButton extends Component {
        private final Screen screen;
        private final ButtonWidget button;

        protected CenteredButton(Screen screen, ButtonWidget button) {
            this.screen = screen;
            this.button = button;
        }

        @Override
        public void render(DrawContext context, int mouseX, int mouseY, boolean hovered, float delta) {
            int rowWidth =  WizardOptionListWidget.ROW_WIDTH;
            button.setX(screen.width / 2 - rowWidth / 2 + (rowWidth - button.getWidth()) / 2);
            button.setY(getContentY());
            button.render(context, mouseX, mouseY, delta);
        }

        @Override
        public List<? extends Element> children() { return List.of(button); }

        @Override
        public List<? extends Selectable> selectableChildren() { return List.of(button); }
    }

    @Environment(EnvType.CLIENT)
    public static class SizedEntry extends Component {

        private final CheckboxWidget checkbox;
        private final Text sizeText;
        private final Screen screen;

        public SizedEntry(Screen screen, String name, long bytes, boolean checked) {
            this.screen = screen;
            this.checkbox = CheckboxWidget.builder(Text.literal(name), screen.getTextRenderer())
                    .checked(checked)
                    .build();
            this.sizeText = Text.literal(formatSize(bytes)).formatted(Formatting.GRAY);
        }

        @Override
        public void render(DrawContext ctx, int mouseX, int mouseY, boolean hovered, float delta) {
            int y = getContentY();

            checkbox.setPosition(screen.width / 2 - 140, y);
            checkbox.render(ctx, mouseX, mouseY, delta);

            ctx.drawText(
                    screen.getTextRenderer(),
                    sizeText,
                    screen.width / 2 + 100,
                    y + 6,
                    0xAAAAAA,
                    false
            );
        }

        @Override
        public List<? extends Element> children() {
            return List.of(checkbox);
        }

        @Override
        public List<? extends Selectable> selectableChildren() {
            return List.of(checkbox);
        }

        private static String formatSize(long bytes) {
            if (bytes < 1024) return bytes + " B";
            if (bytes < 1024 * 1024) return bytes / 1024 + " KB";
            if (bytes < 1024 * 1024 * 1024) return bytes / (1024 * 1024) + " MB";
            return bytes / (1024 * 1024 * 1024) + " GB";
        }
    }


    @Environment(EnvType.CLIENT)
    protected static class Icon extends Component {

        private static final int ICON_SIZE = 16;
        private static final int ICON_PADDING = 6;

        private final Screen screen;
        private final Identifier icon;

        protected Icon(Screen screen, Identifier icon) {
            this.screen = screen;
            this.icon = icon;
        }

        @Override
        public void render(
                DrawContext context,
                int mouseX,
                int mouseY,
                boolean hovered,
                float delta
        ) {
            int totalWidth = ICON_SIZE + ICON_PADDING;

            int startX = screen.width / 2 - totalWidth / 2;
            int y = getContentY() + 2;

            context.drawTexture(
                    RenderPipelines.GUI_TEXTURED,
                    icon,
                    startX,
                    y,
                    0,
                    0,
                    ICON_SIZE,
                    ICON_SIZE,
                    ICON_SIZE,
                    ICON_SIZE
            );
        }

        @Override
        public List<? extends Element> children() {
            return List.of();
        }

        @Override
        public List<? extends Selectable> selectableChildren() {
            return List.of();
        }
    }

    @Environment(EnvType.CLIENT)
    protected static class WidgetPair extends Component {
        private final Screen screen;
        private final List<ButtonWidget> buttons;

        protected WidgetPair(Screen screen, ButtonWidget left, @Nullable ButtonWidget right) {
            this.screen = screen;
            if (right == null) this.buttons = List.of(left);
            else this.buttons = List.of(left, right);
        }

        @Override
        public void render(DrawContext context, int mouseX, int mouseY, boolean hovered, float delta) {
            int totalWidth = buttons.stream().mapToInt(ButtonWidget::getWidth).sum();
            int spacing = buttons.size() > 1 ? 10 : 0;
            totalWidth += spacing * (buttons.size() - 1);

            int startX = screen.width / 2 - totalWidth / 2;
            int xOffset = 0;

            for (ButtonWidget b : buttons) {
                b.setX(startX + xOffset);
                b.setY(getContentY());
                b.render(context, mouseX, mouseY, delta);
                xOffset += b.getWidth() + spacing;
            }
        }

        @Override
        public List<? extends Element> children() { return buttons; }

        @Override
        public List<? extends Selectable> selectableChildren() { return buttons; }
    }
}
